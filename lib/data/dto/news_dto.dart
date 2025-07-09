import 'package:next_starter/data/dto/pagination_dto.dart';

class NewsDto extends PaginationDto {
  final String? country;

  const NewsDto({
    this.country,
    super.page,
    super.pageSize,
  });

  @override
  NewsDto copyWith({
    String? country,
    int? page,
    int? pageSize,
  }) {
    return NewsDto(
      country: country ?? this.country,
      page: page ?? this.page,
      pageSize: pageSize ?? this.pageSize,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'country': country,
        ...super.toJson(),
      };

  @override
  List<Object?> get props => [country, ...super.props];
}
