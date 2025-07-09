import 'package:equatable/equatable.dart';

class PaginationDto extends Equatable {
  final int? page;
  final int? pageSize;

  const PaginationDto({this.page, this.pageSize = 20});

  PaginationDto copyWith({
    int? page,
    int? pageSize,
  }) {
    return PaginationDto(
      page: page ?? this.page,
      pageSize: pageSize ?? this.pageSize,
    );
  }

  Map<String, dynamic> toJson() => {
        'page': page,
        'pageSize': pageSize,
      };

  @override
  List<Object?> get props => [page, pageSize];
}
