// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewsEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NewsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NewsEvent()';
  }
}

/// @nodoc
class $NewsEventCopyWith<$Res> {
  $NewsEventCopyWith(NewsEvent _, $Res Function(NewsEvent) __);
}

/// Adds pattern-matching-related methods to [NewsEvent].
extension NewsEventPatterns on NewsEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTopHeadlines value)? getTopHeadlines,
    TResult Function(_GetEverything value)? getEverything,
    TResult Function(_SelectCountry value)? selectCountry,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetTopHeadlines() when getTopHeadlines != null:
        return getTopHeadlines(_that);
      case _GetEverything() when getEverything != null:
        return getEverything(_that);
      case _SelectCountry() when selectCountry != null:
        return selectCountry(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTopHeadlines value) getTopHeadlines,
    required TResult Function(_GetEverything value) getEverything,
    required TResult Function(_SelectCountry value) selectCountry,
  }) {
    final _that = this;
    switch (_that) {
      case _GetTopHeadlines():
        return getTopHeadlines(_that);
      case _GetEverything():
        return getEverything(_that);
      case _SelectCountry():
        return selectCountry(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTopHeadlines value)? getTopHeadlines,
    TResult? Function(_GetEverything value)? getEverything,
    TResult? Function(_SelectCountry value)? selectCountry,
  }) {
    final _that = this;
    switch (_that) {
      case _GetTopHeadlines() when getTopHeadlines != null:
        return getTopHeadlines(_that);
      case _GetEverything() when getEverything != null:
        return getEverything(_that);
      case _SelectCountry() when selectCountry != null:
        return selectCountry(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsDto dto)? getTopHeadlines,
    TResult Function(NewsDto dto)? getEverything,
    TResult Function(String country)? selectCountry,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetTopHeadlines() when getTopHeadlines != null:
        return getTopHeadlines(_that.dto);
      case _GetEverything() when getEverything != null:
        return getEverything(_that.dto);
      case _SelectCountry() when selectCountry != null:
        return selectCountry(_that.country);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewsDto dto) getTopHeadlines,
    required TResult Function(NewsDto dto) getEverything,
    required TResult Function(String country) selectCountry,
  }) {
    final _that = this;
    switch (_that) {
      case _GetTopHeadlines():
        return getTopHeadlines(_that.dto);
      case _GetEverything():
        return getEverything(_that.dto);
      case _SelectCountry():
        return selectCountry(_that.country);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewsDto dto)? getTopHeadlines,
    TResult? Function(NewsDto dto)? getEverything,
    TResult? Function(String country)? selectCountry,
  }) {
    final _that = this;
    switch (_that) {
      case _GetTopHeadlines() when getTopHeadlines != null:
        return getTopHeadlines(_that.dto);
      case _GetEverything() when getEverything != null:
        return getEverything(_that.dto);
      case _SelectCountry() when selectCountry != null:
        return selectCountry(_that.country);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GetTopHeadlines implements NewsEvent {
  const _GetTopHeadlines(this.dto);

  final NewsDto dto;

  /// Create a copy of NewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetTopHeadlinesCopyWith<_GetTopHeadlines> get copyWith =>
      __$GetTopHeadlinesCopyWithImpl<_GetTopHeadlines>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetTopHeadlines &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @override
  String toString() {
    return 'NewsEvent.getTopHeadlines(dto: $dto)';
  }
}

/// @nodoc
abstract mixin class _$GetTopHeadlinesCopyWith<$Res>
    implements $NewsEventCopyWith<$Res> {
  factory _$GetTopHeadlinesCopyWith(
          _GetTopHeadlines value, $Res Function(_GetTopHeadlines) _then) =
      __$GetTopHeadlinesCopyWithImpl;
  @useResult
  $Res call({NewsDto dto});
}

/// @nodoc
class __$GetTopHeadlinesCopyWithImpl<$Res>
    implements _$GetTopHeadlinesCopyWith<$Res> {
  __$GetTopHeadlinesCopyWithImpl(this._self, this._then);

  final _GetTopHeadlines _self;
  final $Res Function(_GetTopHeadlines) _then;

  /// Create a copy of NewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dto = null,
  }) {
    return _then(_GetTopHeadlines(
      null == dto
          ? _self.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as NewsDto,
    ));
  }
}

/// @nodoc

class _GetEverything implements NewsEvent {
  const _GetEverything(this.dto);

  final NewsDto dto;

  /// Create a copy of NewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetEverythingCopyWith<_GetEverything> get copyWith =>
      __$GetEverythingCopyWithImpl<_GetEverything>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetEverything &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @override
  String toString() {
    return 'NewsEvent.getEverything(dto: $dto)';
  }
}

/// @nodoc
abstract mixin class _$GetEverythingCopyWith<$Res>
    implements $NewsEventCopyWith<$Res> {
  factory _$GetEverythingCopyWith(
          _GetEverything value, $Res Function(_GetEverything) _then) =
      __$GetEverythingCopyWithImpl;
  @useResult
  $Res call({NewsDto dto});
}

/// @nodoc
class __$GetEverythingCopyWithImpl<$Res>
    implements _$GetEverythingCopyWith<$Res> {
  __$GetEverythingCopyWithImpl(this._self, this._then);

  final _GetEverything _self;
  final $Res Function(_GetEverything) _then;

  /// Create a copy of NewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dto = null,
  }) {
    return _then(_GetEverything(
      null == dto
          ? _self.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as NewsDto,
    ));
  }
}

/// @nodoc

class _SelectCountry implements NewsEvent {
  const _SelectCountry(this.country);

  final String country;

  /// Create a copy of NewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SelectCountryCopyWith<_SelectCountry> get copyWith =>
      __$SelectCountryCopyWithImpl<_SelectCountry>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectCountry &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country);

  @override
  String toString() {
    return 'NewsEvent.selectCountry(country: $country)';
  }
}

/// @nodoc
abstract mixin class _$SelectCountryCopyWith<$Res>
    implements $NewsEventCopyWith<$Res> {
  factory _$SelectCountryCopyWith(
          _SelectCountry value, $Res Function(_SelectCountry) _then) =
      __$SelectCountryCopyWithImpl;
  @useResult
  $Res call({String country});
}

/// @nodoc
class __$SelectCountryCopyWithImpl<$Res>
    implements _$SelectCountryCopyWith<$Res> {
  __$SelectCountryCopyWithImpl(this._self, this._then);

  final _SelectCountry _self;
  final $Res Function(_SelectCountry) _then;

  /// Create a copy of NewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? country = null,
  }) {
    return _then(_SelectCountry(
      null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$NewsState {
  NewsStatus get status;
  PaginationEntity<NewsModel> get data;
  bool get hasReachedMax;
  String get errorMessage;
  String get selectedCountry;

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewsStateCopyWith<NewsState> get copyWith =>
      _$NewsStateCopyWithImpl<NewsState>(this as NewsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewsState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, data, hasReachedMax, errorMessage, selectedCountry);

  @override
  String toString() {
    return 'NewsState(status: $status, data: $data, hasReachedMax: $hasReachedMax, errorMessage: $errorMessage, selectedCountry: $selectedCountry)';
  }
}

/// @nodoc
abstract mixin class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) _then) =
      _$NewsStateCopyWithImpl;
  @useResult
  $Res call(
      {NewsStatus status,
      PaginationEntity<NewsModel> data,
      bool hasReachedMax,
      String errorMessage,
      String selectedCountry});
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res> implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._self, this._then);

  final NewsState _self;
  final $Res Function(NewsState) _then;

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
    Object? hasReachedMax = null,
    Object? errorMessage = null,
    Object? selectedCountry = null,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as NewsStatus,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaginationEntity<NewsModel>,
      hasReachedMax: null == hasReachedMax
          ? _self.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCountry: null == selectedCountry
          ? _self.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [NewsState].
extension NewsStatePatterns on NewsState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NewsState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NewsState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NewsState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NewsState():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NewsState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NewsState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(NewsStatus status, PaginationEntity<NewsModel> data,
            bool hasReachedMax, String errorMessage, String selectedCountry)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NewsState() when $default != null:
        return $default(_that.status, _that.data, _that.hasReachedMax,
            _that.errorMessage, _that.selectedCountry);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(NewsStatus status, PaginationEntity<NewsModel> data,
            bool hasReachedMax, String errorMessage, String selectedCountry)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NewsState():
        return $default(_that.status, _that.data, _that.hasReachedMax,
            _that.errorMessage, _that.selectedCountry);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(NewsStatus status, PaginationEntity<NewsModel> data,
            bool hasReachedMax, String errorMessage, String selectedCountry)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NewsState() when $default != null:
        return $default(_that.status, _that.data, _that.hasReachedMax,
            _that.errorMessage, _that.selectedCountry);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _NewsState implements NewsState {
  const _NewsState(
      {this.status = NewsStatus.initial,
      this.data = const PaginationEntity<NewsModel>(),
      this.hasReachedMax = false,
      this.errorMessage = '',
      this.selectedCountry = 'us'});

  @override
  @JsonKey()
  final NewsStatus status;
  @override
  @JsonKey()
  final PaginationEntity<NewsModel> data;
  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final String selectedCountry;

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NewsStateCopyWith<_NewsState> get copyWith =>
      __$NewsStateCopyWithImpl<_NewsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewsState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, data, hasReachedMax, errorMessage, selectedCountry);

  @override
  String toString() {
    return 'NewsState(status: $status, data: $data, hasReachedMax: $hasReachedMax, errorMessage: $errorMessage, selectedCountry: $selectedCountry)';
  }
}

/// @nodoc
abstract mixin class _$NewsStateCopyWith<$Res>
    implements $NewsStateCopyWith<$Res> {
  factory _$NewsStateCopyWith(
          _NewsState value, $Res Function(_NewsState) _then) =
      __$NewsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {NewsStatus status,
      PaginationEntity<NewsModel> data,
      bool hasReachedMax,
      String errorMessage,
      String selectedCountry});
}

/// @nodoc
class __$NewsStateCopyWithImpl<$Res> implements _$NewsStateCopyWith<$Res> {
  __$NewsStateCopyWithImpl(this._self, this._then);

  final _NewsState _self;
  final $Res Function(_NewsState) _then;

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? data = null,
    Object? hasReachedMax = null,
    Object? errorMessage = null,
    Object? selectedCountry = null,
  }) {
    return _then(_NewsState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as NewsStatus,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaginationEntity<NewsModel>,
      hasReachedMax: null == hasReachedMax
          ? _self.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCountry: null == selectedCountry
          ? _self.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
