import 'package:next_starter/data/dto/news_dto.dart';
import 'package:next_starter/data/entities/pagination_entity.dart';
import 'package:next_starter/data/models/news/news_model.dart';

abstract class NewsRemote {
  Future<PaginationEntity<NewsModel>> getTopHeadlines(NewsDto dto);
  Future<PaginationEntity<NewsModel>> getEverything(NewsDto dto);
}
