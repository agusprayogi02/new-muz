import 'package:equatable/equatable.dart';
import 'package:next_starter/data/dto/pagination_dto.dart';
import 'package:next_starter/data/models/base_model.dart';

class PaginationEntity<T extends BaseModel> extends Equatable {
  final List<T> items;
  final int? prevPage;
  final int? currentPage;
  final int? nextPage;

  const PaginationEntity({
    this.items = const [],
    this.prevPage,
    this.currentPage,
    this.nextPage,
  });

  factory PaginationEntity.fromJson(
      Map<String, Object?> json, T Function(Map<String, Object?>) fromJson, PaginationDto dto,
      {String itemsKey = "articles"}) {
    final page = dto.page ?? 1;
    final items = json[itemsKey] != null
        ? (json[itemsKey] as List).map<T>((e) => fromJson(e)).toList()
        : <T>[];
    return PaginationEntity(
      items: items,
      prevPage: page - 1,
      currentPage: page,
      nextPage: items.isEmpty ? null : page + 1,
    );
  }

  Map<String, Object?> toJson() => {
        'items': items,
        'prev_page': prevPage,
        'current_page': currentPage,
        'next_page': nextPage,
      };

  @override
  List<Object?> get props => [items, prevPage, currentPage, nextPage];
}
