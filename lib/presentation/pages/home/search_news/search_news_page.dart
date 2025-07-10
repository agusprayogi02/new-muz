import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:next_starter/application/news/news_bloc.dart';
import 'package:next_starter/common/extensions/context_extension.dart';
import 'package:next_starter/common/widgets/app_error_widget.dart';
import 'package:next_starter/data/dto/news_dto.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/components/base/base_scaffold.dart';
import 'package:next_starter/presentation/pages/home/components/news_item_card.dart';
import 'package:next_starter/presentation/pages/home/components/news_no_data_widget.dart';
import 'package:next_starter/presentation/theme/theme.dart';
import 'package:reactive_date_range_picker/reactive_date_range_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchNewsPage extends StatefulWidget {
  const SearchNewsPage({super.key});

  static const path = '/search-news';

  @override
  State<SearchNewsPage> createState() => _SearchNewsPageState();
}

class _SearchNewsPageState extends State<SearchNewsPage> {
  final NewsBloc newsBloc = locator.get<NewsBloc>();
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  NewsDto _dto = const NewsDto(page: 1);
  String _lastQuery = '';
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    newsBloc.add(NewsEvent.getEverything(_dto.copyWith(search: "a")));
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onSearchChanged(String value) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 400), () {
      final query = value.trim();
      if (query != _lastQuery) {
        _lastQuery = query;
        _dto = _dto.copyWith(search: query, page: 1);
        newsBloc.add(NewsEvent.getEverything(_dto));
      }
    });
    if (value.isEmpty) {
      _onRefresh();
    }
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    if (currentScroll >= (maxScroll * 0.9)) {
      final nextPage = (newsBloc.state.data.nextPage ?? (_dto.page ?? 1) + 1);
      if (!newsBloc.state.hasReachedMax && newsBloc.state.status != NewsStatus.loading) {
        _dto = _dto.copyWith(page: nextPage, search: _lastQuery);
        newsBloc.add(NewsEvent.getEverything(_dto));
      }
    }
  }

  Future<void> _onRefresh() async {
    _dto = _dto.copyWith(page: 1, search: _lastQuery);
    newsBloc.add(NewsEvent.getEverything(_dto));
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

  void _showFilterSheet() {
    final form = FormGroup({
      'dateRange': FormControl<DateTimeRange>(),
    });
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 24,
            bottom: MediaQuery.of(context).viewInsets.bottom + 24,
          ),
          child: ReactiveForm(
            formGroup: form,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const Text('Filter Berita',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                ReactiveDateRangePicker(
                  formControlName: 'dateRange',
                  firstDate: DateTime(2000),
                  lastDate: DateTime.now(),
                  decoration: const InputDecoration(
                    labelText: 'Rentang Tanggal',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.calendar_today),
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      final dateRange = form.control('dateRange').value as DateTimeRange?;
                      _dto = _dto.copyWith(
                        form: dateRange?.start.toIso8601String().split('T').first,
                        to: dateRange?.end.toIso8601String().split('T').first,
                        page: 1,
                      );
                      newsBloc.add(NewsEvent.getEverything(_dto.copyWith(search: _lastQuery)));
                      Navigator.pop(context);
                    },
                    child: const Text('Terapkan Filter'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: newsBloc,
      child: BaseScaffold(
        appBar: AppBar(title: const Text('Search News')),
        body: Column(
          children: [
            Row(
              spacing: 12.r,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.filter_alt_outlined,
                    size: 24.r,
                  ),
                  onPressed: _showFilterSheet,
                  style: IconButton.styleFrom(
                    backgroundColor: ColorTheme.neutral[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    onChanged: _onSearchChanged,
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: 'Search news...',
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[100],
                      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    ),
                    style: Theme.of(context).textTheme.bodyMedium,
                    textInputAction: TextInputAction.search,
                  ),
                ),
              ],
            ),
            12.verticalSpace,
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
                      onTap: () => _onSearchChanged(_searchController.text),
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
