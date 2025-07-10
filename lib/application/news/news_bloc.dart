import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:next_starter/data/dto/news_dto.dart';
import 'package:next_starter/data/entities/pagination_entity.dart';
import 'package:next_starter/data/models/news/news_model.dart';
import 'package:next_starter/data/repositories/news_repository.dart';
import 'package:next_starter/injection.dart';

part 'news_bloc.freezed.dart';
part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(const NewsState()) {
    final repo = locator.get<NewsRepository>();
    on<NewsEvent>((event, emit) async {
      await event.map(
        getTopHeadlines: (e) async {
          final isFirstPage = (e.dto.page ?? 1) == 1;
          if (!isFirstPage && (state.hasReachedMax || state.status == NewsStatus.loading)) return;
          if (isFirstPage) {
            emit(const NewsState(status: NewsStatus.loading));
          } else {
            emit(state.copyWith(status: NewsStatus.loading));
          }
          final rest = await repo.getTopHeadlines(e.dto);
          rest.fold(
            (l) => emit(state.copyWith(status: NewsStatus.error, errorMessage: l.message)),
            (r) {
              final hasReachedMax = r.items.isEmpty || r.nextPage == null;
              print("hasReachedMax: ${r.items.isEmpty} ${r.nextPage == null} $hasReachedMax");
              if (isFirstPage) {
                emit(state.copyWith(
                  status: NewsStatus.loaded,
                  data: r,
                  hasReachedMax: hasReachedMax,
                ));
              } else {
                final allItems = List<NewsModel>.from(state.data.items)..addAll(r.items);
                emit(state.copyWith(
                  status: NewsStatus.loaded,
                  data: PaginationEntity(
                    items: allItems,
                    prevPage: r.prevPage,
                    currentPage: r.currentPage,
                    nextPage: r.nextPage,
                  ),
                  hasReachedMax: hasReachedMax,
                ));
              }
            },
          );
        },
        getEverything: (e) async {
          final isFirstPage = (e.dto.page ?? 1) == 1;
          if (!isFirstPage && (state.hasReachedMax || state.status == NewsStatus.loading)) return;
          if (isFirstPage) {
            emit(const NewsState(status: NewsStatus.loading));
          } else {
            emit(state.copyWith(status: NewsStatus.loading));
          }
          final rest = await repo.getEverything(e.dto);
          rest.fold(
            (l) => emit(state.copyWith(status: NewsStatus.error, errorMessage: l.message)),
            (r) {
              final hasReachedMax = r.items.isEmpty || r.nextPage == null;
              if (isFirstPage) {
                emit(state.copyWith(
                  status: NewsStatus.loaded,
                  data: r,
                  hasReachedMax: hasReachedMax,
                ));
              } else {
                final allItems = List<NewsModel>.from(state.data.items)..addAll(r.items);
                emit(state.copyWith(
                  status: NewsStatus.loaded,
                  data: PaginationEntity(
                    items: allItems,
                    prevPage: r.prevPage,
                    currentPage: r.currentPage,
                    nextPage: r.nextPage,
                  ),
                  hasReachedMax: hasReachedMax,
                ));
              }
            },
          );
        },
        selectCountry: (e) async {
          emit(state.copyWith(
            selectedCountry: e.country,
            status: NewsStatus.loading,
            data: const PaginationEntity(),
            hasReachedMax: false,
            errorMessage: '',
          ));
          final dto = NewsDto(country: e.country, page: 1);
          final rest = await repo.getTopHeadlines(dto);
          rest.fold(
            (l) => emit(state.copyWith(status: NewsStatus.error, errorMessage: l.message)),
            (r) => emit(state.copyWith(status: NewsStatus.loaded, data: r)),
          );
        },
      );
    });
  }
}
