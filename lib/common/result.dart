import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  Result._();

  factory Result.loading() = _ResultLoading;
  factory Result.data(T value) = _ResultData<T>;
  factory Result.error(Object error, [StackTrace? stackTrace]) =
      _ResultError<T>;

  factory Result.guard(T Function() cb) {
    try {
      return Result.data(cb());
    } catch (err, stack) {
      return Result.error(err, stack);
    }
  }

  static Future<Result<T>> guardFuture<T>(Future<T> Function() cb) async {
    try {
      return Result.data(await cb());
    } catch (err, stack) {
      return Result.error(err, stack);
    }
  }

  Result<Res> chain<Res>(Res Function(T value) cb) {
    return when(
      loading: () => Result.loading(),
      error: (err, stack) => Result.error(err, stack),
      data: (value) {
        try {
          return Result.data(cb(value));
        } catch (err, stack) {
          return Result.error(err, stack);
        }
      },
    );
  }

  T get dataOrThrow {
    return when(
      loading: () => throw StateError('Result is loading'),
      data: (value) => value,
      error: (err, stack) {
        // ignore: only_throw_errors
        throw err;
      },
    );
  }

  T getOrElse(Function() orElse) {
    return maybeWhen(
      data: (value) => value,
      orElse: () => orElse(),
    );
  }
}
