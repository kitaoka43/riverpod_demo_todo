import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo_todo/model/todo/todo_data.dart';

final todoState = StateProvider((ref) => TodoData(todo: '', isDone: false, atDate: DateTime.now()));
final todoWriteProvider = StateProvider((ref) => '');