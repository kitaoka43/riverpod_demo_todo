import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo_todo/model/todo/todo_data.dart';
import 'package:riverpod_demo_todo/model/todo/todo_document.dart';
import 'package:riverpod_demo_todo/repository/todo_repository/todo_dao.dart';

final todoStreamProvider = StreamProvider<List<TodoDocument>>((ref) {
  TodoDao _dao = TodoDao();
  final result = _dao.getTodoQuerySnapshots().map((e) => e.docs.map((data) {
        TodoData todoData = convert(data.data());
        TodoDocument todoDocument = TodoDocument(data.id, todoData);
        return todoDocument;
      }).toList());
  return result;
});

TodoData convert(Object? obj) {
  if (obj == null) {
    return TodoData(todo: '', isDone: false, atDate: DateTime.now());
  }

  var map = obj as Map<String, dynamic>;
  return TodoData.fromJson(map);
}
