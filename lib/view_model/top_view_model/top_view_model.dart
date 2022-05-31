import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo_todo/repository/todo_repository/todo_dao.dart';
import 'package:riverpod_demo_todo/state/todo_state/todo_state.dart';

import '../../model/todo/todo_data.dart';
import '../../state/todo_state/todo_stream.dart';

class TodoVm {
  late WidgetRef ref;
  late final todoStream;
  TodoDao _dao = TodoDao();

  setRef(WidgetRef ref) {
    this.ref = ref;
    todoStream = ref.watch(todoStreamProvider);
  }

  void addTodo(TodoData todoData) {
    _dao.addTodo(todoData);
    ref.watch(todoWriteProvider.notifier).state = '';
  }

  void deleteTodo(String id) {
    _dao.deleteTodo(id);
  }

  void updateTodo(String id, bool isDone) {
    _dao.updateTodo(id, isDone);
  }
}