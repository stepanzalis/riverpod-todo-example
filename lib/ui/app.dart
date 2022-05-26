import 'package:flutter/material.dart';

import 'feat/todos/todos_screen.dart';

class RiverpodTodoApp extends StatelessWidget {
  const RiverpodTodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod Todo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TodosPage(),
    );
  }
}
