import 'package:equatable/equatable.dart';
import 'package:next_starter/common/extensions/extensions.dart';
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
      Map<String, Object?> json, T Function(Map<String, Object?>) fromJson,
      {String itemsKey = "articles"}) {
    return PaginationEntity(
      items:
          json[itemsKey] != null ? (json[itemsKey] as List).map((e) => fromJson(e)).toList() : [],
      prevPage: json['prev_page'].toIntX(),
      currentPage: json['current_page'].toIntX(),
      nextPage: json['next_page'].toIntX(),
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
