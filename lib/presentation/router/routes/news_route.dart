import 'package:go_router/go_router.dart';
import 'package:next_starter/presentation/pages/home/search_news/search_news_page.dart';

class NewsRoute {
  static final routes = [
    GoRoute(
      path: SearchNewsPage.path,
      name: SearchNewsPage.path,
      builder: (context, state) => const SearchNewsPage(),
    ),
  ];
}
