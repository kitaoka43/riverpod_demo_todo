import 'package:riverpod_demo_todo/model/todo/todo_data.dart';

class TodoDocument {
  String documentId;
  TodoData todo;

  TodoDocument(this.documentId, this.todo);
}