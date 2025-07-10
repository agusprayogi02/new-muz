part of 'news_bloc.dart';

@freezed
sealed class NewsEvent with _$NewsEvent {
  const factory NewsEvent.getTopHeadlines(NewsDto dto) = _GetTopHeadlines;
  const factory NewsEvent.getEverything(NewsDto dto) = _GetEverything;
  const factory NewsEvent.selectCountry(String country) = _SelectCountry;
}
