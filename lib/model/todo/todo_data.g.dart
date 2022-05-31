// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoData _$$_TodoDataFromJson(Map<String, dynamic> json) => _$_TodoData(
      todo: json['todo'] as String,
      isDone: json['isDone'] as bool,
      atDate: DateTime.parse(json['atDate'] as String),
    );

Map<String, dynamic> _$$_TodoDataToJson(_$_TodoData instance) =>
    <String, dynamic>{
      'todo': instance.todo,
      'isDone': instance.isDone,
      'atDate': instance.atDate.toIso8601String(),
    };
