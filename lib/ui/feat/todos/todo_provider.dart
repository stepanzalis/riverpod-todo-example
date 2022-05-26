import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/common/result.dart';

import '../../../io/models/todo.dart';
import '../../../io/repository/todo_repository.dart';

final todoListProvider = FutureProvider.autoDispose(
  (ref) async {
    final cancelToken = CancelToken();
    ref.onDispose(() => cancelToken
        .cancel()); // cancel the request when the provider is disposed

    final todoRepo = ref.watch(todoRepoProvider);
    return await todoRepo.getTodos();
  },
);

/// Todos filter by state
enum TodoListFilter {
  all,
  active,
  completed,
}

final todoListFilter = StateProvider((_) => TodoListFilter.all);

final filteredTodos = Provider.autoDispose<List<Todo>>(
  (ref) {
    final filter = ref.watch(todoListFilter);
    final todos = ref.watch(todoListProvider).maybeWhen(
          data: (data) => data.getOrElse(() => <Todo>[]),
          orElse: () => <Todo>[],
        );

    switch (filter) {
      case TodoListFilter.completed:
        return todos.where((todo) => todo.completed).toList();
      case TodoListFilter.active:
        return todos.where((todo) => !todo.completed).toList();
      case TodoListFilter.all:
        return todos;
    }
  },
);

/// Providing the state notifier the same way as provider
final todoStateProvider =
    StateNotifierProvider<TodoNotifier, Result<List<Todo>>>((ref) {
  final todoRepo = ref.watch(todoRepoProvider);
  return TodoNotifier(todoRepository: todoRepo);
});

/// Like Cubit for flutter_bloc
class TodoNotifier extends StateNotifier<Result<List<Todo>>> {
  final TodoRepository _todoRepository;

  TodoNotifier({required TodoRepository todoRepository})
      : _todoRepository = todoRepository,
        super(Result.loading());

  Future<void> getTodos() async {
    state = await _todoRepository.getTodos();
  }
}
