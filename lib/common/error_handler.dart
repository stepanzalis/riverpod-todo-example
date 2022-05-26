import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/common/result.dart';

extension AsyncValueUI<T> on AsyncValue<Result<T>> {
  bool get isLoading => this is AsyncLoading<void>;

  // show a snackbar on error only
  void showSnackBarOnError(BuildContext context) => whenOrNull(
        error: (error, _) => showDialogFromError(context, error),
        data: (result) {
          result.maybeMap(
            error: (error) => showDialogFromError(context, error),
            orElse: () {},
          );
        },
      );
}

// for now ignore error types, but can react for specific error types
void showDialogFromError(BuildContext context, Object error) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(error.toString())),
  );
}
