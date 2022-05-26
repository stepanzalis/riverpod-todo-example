// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Result<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T value) data,
    required TResult Function(Object error, StackTrace? stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T value)? data,
    TResult Function(Object error, StackTrace? stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T value)? data,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultLoading<T> value) loading,
    required TResult Function(_ResultData<T> value) data,
    required TResult Function(_ResultError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResultLoading<T> value)? loading,
    TResult Function(_ResultData<T> value)? data,
    TResult Function(_ResultError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultLoading<T> value)? loading,
    TResult Function(_ResultData<T> value)? data,
    TResult Function(_ResultError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, $Res> {
  factory $ResultCopyWith(Result<T> value, $Res Function(Result<T>) then) =
      _$ResultCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, $Res> implements $ResultCopyWith<T, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result<T> _value;
  // ignore: unused_field
  final $Res Function(Result<T>) _then;
}

/// @nodoc
abstract class _$$_ResultLoadingCopyWith<T, $Res> {
  factory _$$_ResultLoadingCopyWith(
          _$_ResultLoading<T> value, $Res Function(_$_ResultLoading<T>) then) =
      __$$_ResultLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_ResultLoadingCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res>
    implements _$$_ResultLoadingCopyWith<T, $Res> {
  __$$_ResultLoadingCopyWithImpl(
      _$_ResultLoading<T> _value, $Res Function(_$_ResultLoading<T>) _then)
      : super(_value, (v) => _then(v as _$_ResultLoading<T>));

  @override
  _$_ResultLoading<T> get _value => super._value as _$_ResultLoading<T>;
}

/// @nodoc

class _$_ResultLoading<T> extends _ResultLoading<T> {
  _$_ResultLoading() : super._();

  @override
  String toString() {
    return 'Result<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResultLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T value) data,
    required TResult Function(Object error, StackTrace? stackTrace) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T value)? data,
    TResult Function(Object error, StackTrace? stackTrace)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T value)? data,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultLoading<T> value) loading,
    required TResult Function(_ResultData<T> value) data,
    required TResult Function(_ResultError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResultLoading<T> value)? loading,
    TResult Function(_ResultData<T> value)? data,
    TResult Function(_ResultError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultLoading<T> value)? loading,
    TResult Function(_ResultData<T> value)? data,
    TResult Function(_ResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ResultLoading<T> extends Result<T> {
  factory _ResultLoading() = _$_ResultLoading<T>;
  _ResultLoading._() : super._();
}

/// @nodoc
abstract class _$$_ResultDataCopyWith<T, $Res> {
  factory _$$_ResultDataCopyWith(
          _$_ResultData<T> value, $Res Function(_$_ResultData<T>) then) =
      __$$_ResultDataCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
class __$$_ResultDataCopyWithImpl<T, $Res> extends _$ResultCopyWithImpl<T, $Res>
    implements _$$_ResultDataCopyWith<T, $Res> {
  __$$_ResultDataCopyWithImpl(
      _$_ResultData<T> _value, $Res Function(_$_ResultData<T>) _then)
      : super(_value, (v) => _then(v as _$_ResultData<T>));

  @override
  _$_ResultData<T> get _value => super._value as _$_ResultData<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_ResultData<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_ResultData<T> extends _ResultData<T> {
  _$_ResultData(this.value) : super._();

  @override
  final T value;

  @override
  String toString() {
    return 'Result<$T>.data(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultData<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_ResultDataCopyWith<T, _$_ResultData<T>> get copyWith =>
      __$$_ResultDataCopyWithImpl<T, _$_ResultData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T value) data,
    required TResult Function(Object error, StackTrace? stackTrace) error,
  }) {
    return data(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T value)? data,
    TResult Function(Object error, StackTrace? stackTrace)? error,
  }) {
    return data?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T value)? data,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultLoading<T> value) loading,
    required TResult Function(_ResultData<T> value) data,
    required TResult Function(_ResultError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResultLoading<T> value)? loading,
    TResult Function(_ResultData<T> value)? data,
    TResult Function(_ResultError<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultLoading<T> value)? loading,
    TResult Function(_ResultData<T> value)? data,
    TResult Function(_ResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _ResultData<T> extends Result<T> {
  factory _ResultData(final T value) = _$_ResultData<T>;
  _ResultData._() : super._();

  T get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ResultDataCopyWith<T, _$_ResultData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResultErrorCopyWith<T, $Res> {
  factory _$$_ResultErrorCopyWith(
          _$_ResultError<T> value, $Res Function(_$_ResultError<T>) then) =
      __$$_ResultErrorCopyWithImpl<T, $Res>;
  $Res call({Object error, StackTrace? stackTrace});
}

/// @nodoc
class __$$_ResultErrorCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res>
    implements _$$_ResultErrorCopyWith<T, $Res> {
  __$$_ResultErrorCopyWithImpl(
      _$_ResultError<T> _value, $Res Function(_$_ResultError<T>) _then)
      : super(_value, (v) => _then(v as _$_ResultError<T>));

  @override
  _$_ResultError<T> get _value => super._value as _$_ResultError<T>;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$_ResultError<T>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_ResultError<T> extends _ResultError<T> {
  _$_ResultError(this.error, [this.stackTrace]) : super._();

  @override
  final Object error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'Result<$T>.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultError<T> &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$$_ResultErrorCopyWith<T, _$_ResultError<T>> get copyWith =>
      __$$_ResultErrorCopyWithImpl<T, _$_ResultError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T value) data,
    required TResult Function(Object error, StackTrace? stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T value)? data,
    TResult Function(Object error, StackTrace? stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T value)? data,
    TResult Function(Object error, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultLoading<T> value) loading,
    required TResult Function(_ResultData<T> value) data,
    required TResult Function(_ResultError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ResultLoading<T> value)? loading,
    TResult Function(_ResultData<T> value)? data,
    TResult Function(_ResultError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultLoading<T> value)? loading,
    TResult Function(_ResultData<T> value)? data,
    TResult Function(_ResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ResultError<T> extends Result<T> {
  factory _ResultError(final Object error, [final StackTrace? stackTrace]) =
      _$_ResultError<T>;
  _ResultError._() : super._();

  Object get error => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ResultErrorCopyWith<T, _$_ResultError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
