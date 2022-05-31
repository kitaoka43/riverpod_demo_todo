import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'todo_data.freezed.dart';
part 'todo_data.g.dart';

@freezed
class TodoData with _$TodoData {
  const factory TodoData({
    required String todo,
    required bool isDone,
    required DateTime atDate,
  }) = _TodoData;

  factory TodoData.fromJson(Map<String, dynamic> json) =>
      _$TodoDataFromJson(json);
}