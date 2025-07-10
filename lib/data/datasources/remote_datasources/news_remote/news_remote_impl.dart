import 'package:next_starter/common/base/base_dio_remote_source.dart';
import 'package:next_starter/common/utils/api_path.dart';
import 'package:next_starter/data/dto/news_dto.dart';
import 'package:next_starter/data/entities/pagination_entity.dart';
import 'package:next_starter/data/models/news/news_model.dart';

import 'news_remote.dart';

class NewsRemoteImpl extends BaseDioRemoteSource implements NewsRemote {
  NewsRemoteImpl(super.dio, super.session);

  @override
  Future<PaginationEntity<NewsModel>> getTopHeadlines(NewsDto dto) async {
    return networkRequest(
      isPaginate: true,
      request: (dio) => dio.get(
        ApiPath.topHeadlines,
        queryParameters: dto.toJson(),
      ),
      onResponse: (json) => PaginationEntity<NewsModel>.fromJson(
        json,
        NewsModel.fromJson,
        dto,
      ),
    );
  }

  @override
  Future<PaginationEntity<NewsModel>> getEverything(NewsDto dto) async {
    final query = dto.toJson();
    query.remove("country");
    if (dto.search == null || dto.search!.isEmpty) {
      query["q"] = "a";
    }
    return networkRequest(
      isPaginate: true,
      request: (dio) => dio.get(ApiPath.everything, queryParameters: query),
      onResponse: (json) => PaginationEntity<NewsModel>.fromJson(
        json,
        NewsModel.fromJson,
        dto,
      ),
    );
  }
}
