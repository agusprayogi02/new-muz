import 'package:flutter/material.dart';

class SearchNewsPage extends StatelessWidget {
  const SearchNewsPage({super.key});

  static const path = '/search-news';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search News')),
      body: const Center(child: Text('Search page content here...')),
    );
  }
}
