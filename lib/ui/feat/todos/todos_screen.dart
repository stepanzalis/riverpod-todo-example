import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/common/error_handler.dart';
import 'package:riverpod_example/common/result.dart';
import '../../../io/models/todo.dart';
import 'todo_provider.dart';

class TodosPage extends ConsumerWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // react to error states
    ref.listen<AsyncValue<Result<List<Todo>>>>(
      todoListProvider,
      (_, state) => state.showSnackBarOnError(context),
    );

    final todos = ref.watch(filteredTodos);

    return Scaffold(
      appBar: AppBar(title: const Text("Todos"), actions: [
        IconButton(
          icon: const Icon(Icons.filter_list),
          onPressed: () => filterTodos(ref),
        ),
      ]),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          final todo = todos[index];
          return ListTile(
            title: Text(todo.title),
            subtitle: Text(todo.title),
          );
        },
      ),
    );
  }

  void filterTodos(WidgetRef ref) {
    if (ref.read(todoListFilter.notifier).state == TodoListFilter.all) {
      log("Filtering todos - completed");
      ref.read(todoListFilter.notifier).state = TodoListFilter.completed;
    } else {
      log("Showing all todos");
      ref.read(todoListFilter.notifier).state = TodoListFilter.all;
    }
  }
}
