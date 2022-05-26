import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/io/services/api_service.dart';
import 'package:riverpod_example/common/result.dart';

import '../models/todo.dart';

final todoRepoProvider = Provider((ref) => TodoRepositoryImpl(ref.read));

abstract class TodoRepository {
  Future<Result<List<Todo>>> getTodos({CancelToken? cancelToken});
}

class TodoRepositoryImpl implements TodoRepository {
  late final Reader _read;
  late final TodoDio _dio;

  TodoRepositoryImpl(this._read) {
    // instead of generic reader, use Dio instance directly
    _dio = _read(dioProvider);
  }

  @override
  Future<Result<List<Todo>>> getTodos({CancelToken? cancelToken}) async {
    return Result.guardFuture(
      () async {
        final response = await _dio.get("/todos", cancelToken: cancelToken);
        return (response.data as List)
            .map<Todo>((todo) => Todo.fromJson(todo))
            .toList();
      },
    );
  }
}
