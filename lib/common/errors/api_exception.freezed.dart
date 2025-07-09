// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiException {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ApiException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ApiException()';
  }
}

/// @nodoc
class $ApiExceptionCopyWith<$Res> {
  $ApiExceptionCopyWith(ApiException _, $Res Function(ApiException) __);
}

/// Adds pattern-matching-related methods to [ApiException].
extension ApiExceptionPatterns on ApiException {
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
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Network value)? network,
    TResult Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_Database value)? database,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ServerException() when serverException != null:
        return serverException(_that);
      case _UnprocessableEntity() when unprocessableEntity != null:
        return unprocessableEntity(_that);
      case _UnAuthorized() when unAuthorized != null:
        return unAuthorized(_that);
      case _Network() when network != null:
        return network(_that);
      case _ConnectionTimeOut() when connectionTimeOut != null:
        return connectionTimeOut(_that);
      case _BadCertificate() when badCertificate != null:
        return badCertificate(_that);
      case _BadResponse() when badResponse != null:
        return badResponse(_that);
      case _Database() when database != null:
        return database(_that);
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
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Network value) network,
    required TResult Function(_ConnectionTimeOut value) connectionTimeOut,
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_Database value) database,
  }) {
    final _that = this;
    switch (_that) {
      case _ServerException():
        return serverException(_that);
      case _UnprocessableEntity():
        return unprocessableEntity(_that);
      case _UnAuthorized():
        return unAuthorized(_that);
      case _Network():
        return network(_that);
      case _ConnectionTimeOut():
        return connectionTimeOut(_that);
      case _BadCertificate():
        return badCertificate(_that);
      case _BadResponse():
        return badResponse(_that);
      case _Database():
        return database(_that);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(_ServerException value)? serverException,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_Network value)? network,
    TResult? Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_BadResponse value)? badResponse,
    TResult? Function(_Database value)? database,
  }) {
    final _that = this;
    switch (_that) {
      case _ServerException() when serverException != null:
        return serverException(_that);
      case _UnprocessableEntity() when unprocessableEntity != null:
        return unprocessableEntity(_that);
      case _UnAuthorized() when unAuthorized != null:
        return unAuthorized(_that);
      case _Network() when network != null:
        return network(_that);
      case _ConnectionTimeOut() when connectionTimeOut != null:
        return connectionTimeOut(_that);
      case _BadCertificate() when badCertificate != null:
        return badCertificate(_that);
      case _BadResponse() when badResponse != null:
        return badResponse(_that);
      case _Database() when database != null:
        return database(_that);
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
    TResult Function(String message)? serverException,
    TResult Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult Function(String message)? unAuthorized,
    TResult Function()? network,
    TResult Function()? connectionTimeOut,
    TResult Function()? badCertificate,
    TResult Function(String message)? badResponse,
    TResult Function(String message)? database,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ServerException() when serverException != null:
        return serverException(_that.message);
      case _UnprocessableEntity() when unprocessableEntity != null:
        return unprocessableEntity(_that.message, _that.errors);
      case _UnAuthorized() when unAuthorized != null:
        return unAuthorized(_that.message);
      case _Network() when network != null:
        return network();
      case _ConnectionTimeOut() when connectionTimeOut != null:
        return connectionTimeOut();
      case _BadCertificate() when badCertificate != null:
        return badCertificate();
      case _BadResponse() when badResponse != null:
        return badResponse(_that.message);
      case _Database() when database != null:
        return database(_that.message);
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
    required TResult Function(String message) serverException,
    required TResult Function(String message, Map<String, dynamic> errors)
        unprocessableEntity,
    required TResult Function(String message) unAuthorized,
    required TResult Function() network,
    required TResult Function() connectionTimeOut,
    required TResult Function() badCertificate,
    required TResult Function(String message) badResponse,
    required TResult Function(String message) database,
  }) {
    final _that = this;
    switch (_that) {
      case _ServerException():
        return serverException(_that.message);
      case _UnprocessableEntity():
        return unprocessableEntity(_that.message, _that.errors);
      case _UnAuthorized():
        return unAuthorized(_that.message);
      case _Network():
        return network();
      case _ConnectionTimeOut():
        return connectionTimeOut();
      case _BadCertificate():
        return badCertificate();
      case _BadResponse():
        return badResponse(_that.message);
      case _Database():
        return database(_that.message);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(String message)? serverException,
    TResult? Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult? Function(String message)? unAuthorized,
    TResult? Function()? network,
    TResult? Function()? connectionTimeOut,
    TResult? Function()? badCertificate,
    TResult? Function(String message)? badResponse,
    TResult? Function(String message)? database,
  }) {
    final _that = this;
    switch (_that) {
      case _ServerException() when serverException != null:
        return serverException(_that.message);
      case _UnprocessableEntity() when unprocessableEntity != null:
        return unprocessableEntity(_that.message, _that.errors);
      case _UnAuthorized() when unAuthorized != null:
        return unAuthorized(_that.message);
      case _Network() when network != null:
        return network();
      case _ConnectionTimeOut() when connectionTimeOut != null:
        return connectionTimeOut();
      case _BadCertificate() when badCertificate != null:
        return badCertificate();
      case _BadResponse() when badResponse != null:
        return badResponse(_that.message);
      case _Database() when database != null:
        return database(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ServerException implements ApiException {
  const _ServerException({required this.message});

  final String message;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ServerExceptionCopyWith<_ServerException> get copyWith =>
      __$ServerExceptionCopyWithImpl<_ServerException>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServerException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ApiException.serverException(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ServerExceptionCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$ServerExceptionCopyWith(
          _ServerException value, $Res Function(_ServerException) _then) =
      __$ServerExceptionCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$ServerExceptionCopyWithImpl<$Res>
    implements _$ServerExceptionCopyWith<$Res> {
  __$ServerExceptionCopyWithImpl(this._self, this._then);

  final _ServerException _self;
  final $Res Function(_ServerException) _then;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_ServerException(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _UnprocessableEntity implements ApiException {
  const _UnprocessableEntity(
      {required this.message, required final Map<String, dynamic> errors})
      : _errors = errors;

  final String message;
  final Map<String, dynamic> _errors;
  Map<String, dynamic> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UnprocessableEntityCopyWith<_UnprocessableEntity> get copyWith =>
      __$UnprocessableEntityCopyWithImpl<_UnprocessableEntity>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnprocessableEntity &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_errors));

  @override
  String toString() {
    return 'ApiException.unprocessableEntity(message: $message, errors: $errors)';
  }
}

/// @nodoc
abstract mixin class _$UnprocessableEntityCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$UnprocessableEntityCopyWith(_UnprocessableEntity value,
          $Res Function(_UnprocessableEntity) _then) =
      __$UnprocessableEntityCopyWithImpl;
  @useResult
  $Res call({String message, Map<String, dynamic> errors});
}

/// @nodoc
class __$UnprocessableEntityCopyWithImpl<$Res>
    implements _$UnprocessableEntityCopyWith<$Res> {
  __$UnprocessableEntityCopyWithImpl(this._self, this._then);

  final _UnprocessableEntity _self;
  final $Res Function(_UnprocessableEntity) _then;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? errors = null,
  }) {
    return _then(_UnprocessableEntity(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _self._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _UnAuthorized implements ApiException {
  const _UnAuthorized(this.message);

  final String message;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UnAuthorizedCopyWith<_UnAuthorized> get copyWith =>
      __$UnAuthorizedCopyWithImpl<_UnAuthorized>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnAuthorized &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ApiException.unAuthorized(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$UnAuthorizedCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$UnAuthorizedCopyWith(
          _UnAuthorized value, $Res Function(_UnAuthorized) _then) =
      __$UnAuthorizedCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$UnAuthorizedCopyWithImpl<$Res>
    implements _$UnAuthorizedCopyWith<$Res> {
  __$UnAuthorizedCopyWithImpl(this._self, this._then);

  final _UnAuthorized _self;
  final $Res Function(_UnAuthorized) _then;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_UnAuthorized(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Network implements ApiException {
  const _Network();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Network);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ApiException.network()';
  }
}

/// @nodoc

class _ConnectionTimeOut implements ApiException {
  const _ConnectionTimeOut();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ConnectionTimeOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ApiException.connectionTimeOut()';
  }
}

/// @nodoc

class _BadCertificate implements ApiException {
  const _BadCertificate();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _BadCertificate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ApiException.badCertificate()';
  }
}

/// @nodoc

class _BadResponse implements ApiException {
  const _BadResponse(this.message);

  final String message;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BadResponseCopyWith<_BadResponse> get copyWith =>
      __$BadResponseCopyWithImpl<_BadResponse>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BadResponse &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ApiException.badResponse(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$BadResponseCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$BadResponseCopyWith(
          _BadResponse value, $Res Function(_BadResponse) _then) =
      __$BadResponseCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$BadResponseCopyWithImpl<$Res> implements _$BadResponseCopyWith<$Res> {
  __$BadResponseCopyWithImpl(this._self, this._then);

  final _BadResponse _self;
  final $Res Function(_BadResponse) _then;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_BadResponse(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Database implements ApiException {
  const _Database({required this.message});

  final String message;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DatabaseCopyWith<_Database> get copyWith =>
      __$DatabaseCopyWithImpl<_Database>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Database &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ApiException.database(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$DatabaseCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$DatabaseCopyWith(_Database value, $Res Function(_Database) _then) =
      __$DatabaseCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$DatabaseCopyWithImpl<$Res> implements _$DatabaseCopyWith<$Res> {
  __$DatabaseCopyWithImpl(this._self, this._then);

  final _Database _self;
  final $Res Function(_Database) _then;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_Database(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
