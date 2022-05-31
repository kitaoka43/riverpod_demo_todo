import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_demo_todo/model/todo/todo_data.dart';

class TodoDao {
  final CollectionReference _collection =
      FirebaseFirestore.instance.collection('todo');

  // todo追加
  void addTodo(TodoData todoData) {
    _collection.add(todoData.toJson());
  }

  // todo取得
  Stream<QuerySnapshot> getTodoQuerySnapshots() {
    return _collection.orderBy('atDate').snapshots();
  }

  // todo取得
  void updateTodo(String id, bool isDone) {
    if (isDone) {
      _collection.doc(id).update({'isDone': false});
      return;
    }
    _collection.doc(id).update({'isDone': true});
  }

  // 削除
  void deleteTodo(String id) {
    _collection.doc(id).delete();
  }
}
