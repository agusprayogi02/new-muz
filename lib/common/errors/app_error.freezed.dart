// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppError {
  String get message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'AppError(message: $message)';
  }
}

/// Adds pattern-matching-related methods to [AppError].
extension AppErrorPatterns on AppError {
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
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    TResult Function(_BadCertificate value)? badCertificate,
    TResult Function(_BadResponse value)? badResponse,
    TResult Function(_UnAuthorized value)? unAuthorized,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ServerError() when serverError != null:
        return serverError(_that);
      case _ValidationError() when validationError != null:
        return validationError(_that);
      case _NoInternet() when noInternet != null:
        return noInternet(_that);
      case _TimeOut() when timeOut != null:
        return timeOut(_that);
      case _BadCertificate() when badCertificate != null:
        return badCertificate(_that);
      case _BadResponse() when badResponse != null:
        return badResponse(_that);
      case _UnAuthorized() when unAuthorized != null:
        return unAuthorized(_that);
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
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ValidationError value) validationError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
    required TResult Function(_BadCertificate value) badCertificate,
    required TResult Function(_BadResponse value) badResponse,
    required TResult Function(_UnAuthorized value) unAuthorized,
  }) {
    final _that = this;
    switch (_that) {
      case _ServerError():
        return serverError(_that);
      case _ValidationError():
        return validationError(_that);
      case _NoInternet():
        return noInternet(_that);
      case _TimeOut():
        return timeOut(_that);
      case _BadCertificate():
        return badCertificate(_that);
      case _BadResponse():
        return badResponse(_that);
      case _UnAuthorized():
        return unAuthorized(_that);
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
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_ValidationError value)? validationError,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
    TResult? Function(_BadCertificate value)? badCertificate,
    TResult? Function(_BadResponse value)? badResponse,
    TResult? Function(_UnAuthorized value)? unAuthorized,
  }) {
    final _that = this;
    switch (_that) {
      case _ServerError() when serverError != null:
        return serverError(_that);
      case _ValidationError() when validationError != null:
        return validationError(_that);
      case _NoInternet() when noInternet != null:
        return noInternet(_that);
      case _TimeOut() when timeOut != null:
        return timeOut(_that);
      case _BadCertificate() when badCertificate != null:
        return badCertificate(_that);
      case _BadResponse() when badResponse != null:
        return badResponse(_that);
      case _UnAuthorized() when unAuthorized != null:
        return unAuthorized(_that);
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
    TResult Function(int code, String message)? serverError,
    TResult Function(String message, Map<String, dynamic> errors)?
        validationError,
    TResult Function(String message)? noInternet,
    TResult Function(String message)? timeOut,
    TResult Function(String message)? badCertificate,
    TResult Function(String message)? badResponse,
    TResult Function(String message)? unAuthorized,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ServerError() when serverError != null:
        return serverError(_that.code, _that.message);
      case _ValidationError() when validationError != null:
        return validationError(_that.message, _that.errors);
      case _NoInternet() when noInternet != null:
        return noInternet(_that.message);
      case _TimeOut() when timeOut != null:
        return timeOut(_that.message);
      case _BadCertificate() when badCertificate != null:
        return badCertificate(_that.message);
      case _BadResponse() when badResponse != null:
        return badResponse(_that.message);
      case _UnAuthorized() when unAuthorized != null:
        return unAuthorized(_that.message);
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
    required TResult Function(int code, String message) serverError,
    required TResult Function(String message, Map<String, dynamic> errors)
        validationError,
    required TResult Function(String message) noInternet,
    required TResult Function(String message) timeOut,
    required TResult Function(String message) badCertificate,
    required TResult Function(String message) badResponse,
    required TResult Function(String message) unAuthorized,
  }) {
    final _that = this;
    switch (_that) {
      case _ServerError():
        return serverError(_that.code, _that.message);
      case _ValidationError():
        return validationError(_that.message, _that.errors);
      case _NoInternet():
        return noInternet(_that.message);
      case _TimeOut():
        return timeOut(_that.message);
      case _BadCertificate():
        return badCertificate(_that.message);
      case _BadResponse():
        return badResponse(_that.message);
      case _UnAuthorized():
        return unAuthorized(_that.message);
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
    TResult? Function(int code, String message)? serverError,
    TResult? Function(String message, Map<String, dynamic> errors)?
        validationError,
    TResult? Function(String message)? noInternet,
    TResult? Function(String message)? timeOut,
    TResult? Function(String message)? badCertificate,
    TResult? Function(String message)? badResponse,
    TResult? Function(String message)? unAuthorized,
  }) {
    final _that = this;
    switch (_that) {
      case _ServerError() when serverError != null:
        return serverError(_that.code, _that.message);
      case _ValidationError() when validationError != null:
        return validationError(_that.message, _that.errors);
      case _NoInternet() when noInternet != null:
        return noInternet(_that.message);
      case _TimeOut() when timeOut != null:
        return timeOut(_that.message);
      case _BadCertificate() when badCertificate != null:
        return badCertificate(_that.message);
      case _BadResponse() when badResponse != null:
        return badResponse(_that.message);
      case _UnAuthorized() when unAuthorized != null:
        return unAuthorized(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ServerError implements AppError {
  const _ServerError({this.code = 400, required this.message});

  @JsonKey()
  final int code;
  @override
  final String message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServerError &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @override
  String toString() {
    return 'AppError.serverError(code: $code, message: $message)';
  }
}

/// @nodoc

class _ValidationError implements AppError {
  const _ValidationError(
      {required this.message, final Map<String, dynamic> errors = const {}})
      : _errors = errors;

  @override
  final String message;
  final Map<String, dynamic> _errors;
  @JsonKey()
  Map<String, dynamic> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValidationError &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_errors));

  @override
  String toString() {
    return 'AppError.validationError(message: $message, errors: $errors)';
  }
}

/// @nodoc

class _NoInternet implements AppError {
  const _NoInternet({this.message = "Anda Tidak terhubung ke internet!"});

  @override
  @JsonKey()
  final String message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoInternet &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'AppError.noInternet(message: $message)';
  }
}

/// @nodoc

class _TimeOut implements AppError {
  const _TimeOut({this.message = "Koneksi gagal karena waktu habis!"});

  @override
  @JsonKey()
  final String message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimeOut &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'AppError.timeOut(message: $message)';
  }
}

/// @nodoc

class _BadCertificate implements AppError {
  const _BadCertificate({this.message = "Sertifikat tidak valid!"});

  @override
  @JsonKey()
  final String message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BadCertificate &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'AppError.badCertificate(message: $message)';
  }
}

/// @nodoc

class _BadResponse implements AppError {
  const _BadResponse({this.message = "Respon tidak valid!"});

  @override
  @JsonKey()
  final String message;

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
    return 'AppError.badResponse(message: $message)';
  }
}

/// @nodoc

class _UnAuthorized implements AppError {
  const _UnAuthorized({this.message = "Anda tidak memiliki akses!"});

  @override
  @JsonKey()
  final String message;

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
    return 'AppError.unAuthorized(message: $message)';
  }
}

// dart format on
