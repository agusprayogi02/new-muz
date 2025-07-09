import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:next_starter/application/news/news_bloc.dart';
import 'package:next_starter/common/extensions/extensions.dart';
import 'package:next_starter/common/widgets/widgets.dart';
import 'package:next_starter/data/dto/news_dto.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/pages/home/components/news_item_card.dart';
import 'package:next_starter/presentation/pages/home/components/search_news_widget.dart';
import 'package:next_starter/presentation/pages/home/search_news/search_news_page.dart';

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
  NewsDto _dto = const NewsDto(country: "us", pageSize: 10, page: 1);

  static const List<Map<String, String>> countries = [
    {"code": "us", "name": "United States"},
    {"code": "id", "name": "Indonesia"},
    {"code": "gb", "name": "United Kingdom"},
    {"code": "jp", "name": "Japan"},
    {"code": "au", "name": "Australia"},
    {"code": "fr", "name": "France"},
    {"code": "de", "name": "Germany"},
    {"code": "it", "name": "Italy"},
    {"code": "ru", "name": "Russia"},
    {"code": "in", "name": "India"},
    {"code": "cn", "name": "China"},
    {"code": "kr", "name": "South Korea"},
    {"code": "br", "name": "Brazil"},
    {"code": "ca", "name": "Canada"},
    {"code": "za", "name": "South Africa"},
  ];

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
        newsBloc.add(NewsEvent.fetchNextPage(_dto));
      }
    }
  }

  Future<void> _onRefresh() async {
    _dto = _dto.copyWith(page: 1);
    newsBloc.add(NewsEvent.refresh(_dto));
  }

  void _onCountrySelected(String code) {
    newsBloc.add(NewsEvent.selectCountry(code));
  }

  void _onSearchTap() {
    context.route.push(SearchNewsPage.path);
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
                    itemCount: countries.length,
                    separatorBuilder: (_, __) => 8.horizontalSpace,
                    itemBuilder: (context, index) {
                      final country = countries[index];
                      final isSelected = country['code'] == state.selectedCountry;
                      return GestureDetector(
                        onTap: () => _onCountrySelected(country['code']!),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            color: isSelected ? Colors.blue : Colors.grey[200],
                            borderRadius: 24.rounded,
                            border: isSelected ? Border.all(color: Colors.blue, width: 2) : null,
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
            8.verticalSpace,
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
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.search_off, size: 72, color: Colors.grey[400]),
                          24.verticalSpace,
                          Text(
                            'No news found',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(color: Colors.grey[700], fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          12.verticalSpace,
                          Text(
                            'Try different keywords or select another country.',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.grey[500]),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
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
