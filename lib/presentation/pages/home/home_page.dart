import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:next_starter/application/news/news_bloc.dart';
import 'package:next_starter/common/constants.dart';
import 'package:next_starter/common/extensions/extensions.dart';
import 'package:next_starter/common/widgets/widgets.dart';
import 'package:next_starter/data/dto/news_dto.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/pages/home/components/news_item_card.dart';
import 'package:next_starter/presentation/pages/home/components/news_no_data_widget.dart';
import 'package:next_starter/presentation/pages/home/components/search_news_widget.dart';
import 'package:next_starter/presentation/pages/home/search_news/search_news_page.dart';
import 'package:next_starter/presentation/theme/theme.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../components/components.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const path = "/home";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final newsBloc = locator.get<NewsBloc>();
  final ScrollController _scrollController = ScrollController();
  NewsDto _dto = const NewsDto(country: "us", page: 1);

  @override
  void initState() {
    super.initState();
    newsBloc.add(NewsEvent.getTopHeadlines(_dto));
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    if (currentScroll >= (maxScroll * 0.9)) {
      final nextPage = (newsBloc.state.data.nextPage ?? (_dto.page ?? 1) + 1);
      if (!newsBloc.state.hasReachedMax && newsBloc.state.status != NewsStatus.loading) {
        _dto = _dto.copyWith(page: nextPage);
        newsBloc.add(NewsEvent.getTopHeadlines(_dto));
      }
    }
  }

  Future<void> _onRefresh() async {
    _dto = _dto.copyWith(page: 1);
    newsBloc.add(NewsEvent.getTopHeadlines(_dto));
  }

  void _onCountrySelected(String code) {
    newsBloc.add(NewsEvent.selectCountry(code));
  }

  void _onSearchTap() {
    context.route.push(SearchNewsPage.path);
  }

  Future<void> _openWeb(String? url) async {
    if (url == null) {
      context.showSnackbar(message: "URL not valid!", error: true, isPop: false);
      return;
    }
    final Uri url0 = Uri.parse(url);
    if (!await launchUrl(url0, mode: LaunchMode.externalApplication)) {
      context.showSnackbar(message: "URL not valid!", error: true, isPop: false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: newsBloc,
      child: BaseScaffold(
        body: Column(
          children: [
            // Search Bar
            SearchNewsWidget(onTap: _onSearchTap),
            8.verticalSpace,
            // Country Filter
            SizedBox(
              height: 44,
              child: BlocBuilder<NewsBloc, NewsState>(
                buildWhen: (prev, curr) => prev.selectedCountry != curr.selectedCountry,
                builder: (context, state) {
                  return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: Constants.countries.length,
                    separatorBuilder: (_, __) => 8.horizontalSpace,
                    itemBuilder: (context, index) {
                      final country = Constants.countries[index];
                      final isSelected = country['code'] == state.selectedCountry;
                      return GestureDetector(
                        onTap: () => _onCountrySelected(country['code']!),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            color: isSelected ? ColorTheme.primary : ColorTheme.neutral[200],
                            borderRadius: 24.rounded,
                            border:
                                isSelected ? Border.all(color: ColorTheme.primary, width: 2) : null,
                          ),
                          child: Center(
                            child: Text(
                              country['name']!,
                              style: TextStyle(
                                color: isSelected ? Colors.white : Colors.black87,
                                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            12.verticalSpace,
            // List berita
            Expanded(
              child: BlocBuilder<NewsBloc, NewsState>(
                builder: (context, state) {
                  if (state.status == NewsStatus.loading && state.data.items.isEmpty) {
                    return Column(
                      spacing: 16.r,
                      children: [
                        NewsItemCard.loading(),
                        NewsItemCard.loading(),
                        NewsItemCard.loading(),
                      ],
                    );
                  } else if (state.status == NewsStatus.error) {
                    return AppErrorWidget(
                      message: state.errorMessage,
                      onTap: () {
                        newsBloc.add(NewsEvent.getTopHeadlines(_dto));
                      },
                    );
                  } else if (state.status == NewsStatus.loaded && state.data.items.isEmpty) {
                    return NewsNoDataWidget();
                  }
                  return RefreshIndicator(
                    onRefresh: _onRefresh,
                    child: ListView.separated(
                      controller: _scrollController,
                      physics: const BouncingScrollPhysics(),
                      itemCount: state.hasReachedMax
                          ? state.data.items.length
                          : state.data.items.length + 1,
                      itemBuilder: (context, index) {
                        if (index >= state.data.items.length && !state.hasReachedMax) {
                          return NewsItemCard.loading();
                        }
                        final news = state.data.items[index];
                        return NewsItemCard(
                          imageUrl: news.urlToImage,
                          title: news.title,
                          sourceName: news.source?.name ?? '-',
                          publishedAt:
                              news.publishedAt != null ? news.publishedAt!.split('T').first : '',
                          onTap: () => _openWeb(news.url),
                        );
                      },
                      separatorBuilder: (context, index) => 16.verticalSpace,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
