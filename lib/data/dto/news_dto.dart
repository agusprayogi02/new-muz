import 'package:next_starter/data/dto/pagination_dto.dart';

class NewsDto extends PaginationDto {
  final String? country;
  final String? search;

  const NewsDto({
    this.country,
    this.search,
    super.page,
    super.pageSize,
  });

  @override
  NewsDto copyWith({
    String? country,
    String? search,
    int? page,
    int? pageSize,
  }) {
    return NewsDto(
      country: country ?? this.country,
      search: search ?? this.search,
      page: page ?? this.page,
      pageSize: pageSize ?? this.pageSize,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'country': country,
        'q': search,
        ...super.toJson(),
      };

  @override
  List<Object?> get props => [country, search, ...super.props];
}
