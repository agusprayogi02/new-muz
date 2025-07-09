part of 'news_bloc.dart';

enum NewsStatus {
  initial,
  loading,
  loaded,
  error,
  noData,
}

@freezed
sealed class NewsState with _$NewsState {
  const factory NewsState({
    @Default(NewsStatus.initial) NewsStatus status,
    @Default(PaginationEntity<NewsModel>()) PaginationEntity<NewsModel> data,
    @Default(false) bool hasReachedMax,
    @Default('') String errorMessage,
    @Default('us') String selectedCountry,
  }) = _NewsState;
}
