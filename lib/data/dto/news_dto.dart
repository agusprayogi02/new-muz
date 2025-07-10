import 'package:next_starter/data/dto/pagination_dto.dart';

class NewsDto extends PaginationDto {
  final String? country;
  final String? search;
  final String? form;
  final String? to;

  const NewsDto({
    this.country,
    super.page,
    super.pageSize = 20,
    this.search,
    this.form,
    this.to,
  });

  @override
  NewsDto copyWith({
    String? country,
    int? page,
    int? pageSize,
    String? search,
    String? form,
    String? to,
  }) {
    return NewsDto(
      country: country ?? this.country,
      page: page ?? this.page,
      pageSize: pageSize ?? this.pageSize,
      search: search ?? this.search,
      form: form ?? this.form,
      to: to ?? this.to,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        if (country != null) 'country': country,
        if (search != null) 'q': search,
        if (form != null) 'from': form,
        if (to != null) 'to': to,
        ...super.toJson(),
      };

  @override
  List<Object?> get props => [country, search, form, to, ...super.props];
}
