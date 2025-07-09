import 'package:next_starter/common/base/base_repository.dart';
import 'package:next_starter/common/typedefs/typedefs.dart';
import 'package:next_starter/data/datasources/remote_datasources/news_remote/news_remote.dart';
import 'package:next_starter/data/dto/news_dto.dart';
import 'package:next_starter/data/entities/pagination_entity.dart';
import 'package:next_starter/data/models/news/news_model.dart';

class NewsRepository extends BaseRepository {
  NewsRepository(super.networkInfo, this.remote);

  final NewsRemote remote;

  EitherResponse<PaginationEntity<NewsModel>> getTopHeadlines(NewsDto dto) async {
    return handleNetworkCall(
      call: remote.getTopHeadlines(dto),
      onSuccess: (data) => data,
    );
  }

  EitherResponse<PaginationEntity<NewsModel>> getEverything(NewsDto dto) async {
    return handleNetworkCall(
      call: remote.getEverything(dto),
      onSuccess: (data) => data,
    );
  }
}
