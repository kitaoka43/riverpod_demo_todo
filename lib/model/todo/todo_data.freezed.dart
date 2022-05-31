// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoData _$TodoDataFromJson(Map<String, dynamic> json) {
  return _TodoData.fromJson(json);
}

/// @nodoc
mixin _$TodoData {
  String get todo => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  DateTime get atDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoDataCopyWith<TodoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoDataCopyWith<$Res> {
  factory $TodoDataCopyWith(TodoData value, $Res Function(TodoData) then) =
      _$TodoDataCopyWithImpl<$Res>;
  $Res call({String todo, bool isDone, DateTime atDate});
}

/// @nodoc
class _$TodoDataCopyWithImpl<$Res> implements $TodoDataCopyWith<$Res> {
  _$TodoDataCopyWithImpl(this._value, this._then);

  final TodoData _value;
  // ignore: unused_field
  final $Res Function(TodoData) _then;

  @override
  $Res call({
    Object? todo = freezed,
    Object? isDone = freezed,
    Object? atDate = freezed,
  }) {
    return _then(_value.copyWith(
      todo: todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      atDate: atDate == freezed
          ? _value.atDate
          : atDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_TodoDataCopyWith<$Res> implements $TodoDataCopyWith<$Res> {
  factory _$$_TodoDataCopyWith(
          _$_TodoData value, $Res Function(_$_TodoData) then) =
      __$$_TodoDataCopyWithImpl<$Res>;
  @override
  $Res call({String todo, bool isDone, DateTime atDate});
}

/// @nodoc
class __$$_TodoDataCopyWithImpl<$Res> extends _$TodoDataCopyWithImpl<$Res>
    implements _$$_TodoDataCopyWith<$Res> {
  __$$_TodoDataCopyWithImpl(
      _$_TodoData _value, $Res Function(_$_TodoData) _then)
      : super(_value, (v) => _then(v as _$_TodoData));

  @override
  _$_TodoData get _value => super._value as _$_TodoData;

  @override
  $Res call({
    Object? todo = freezed,
    Object? isDone = freezed,
    Object? atDate = freezed,
  }) {
    return _then(_$_TodoData(
      todo: todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      atDate: atDate == freezed
          ? _value.atDate
          : atDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoData with DiagnosticableTreeMixin implements _TodoData {
  const _$_TodoData(
      {required this.todo, required this.isDone, required this.atDate});

  factory _$_TodoData.fromJson(Map<String, dynamic> json) =>
      _$$_TodoDataFromJson(json);

  @override
  final String todo;
  @override
  final bool isDone;
  @override
  final DateTime atDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoData(todo: $todo, isDone: $isDone, atDate: $atDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoData'))
      ..add(DiagnosticsProperty('todo', todo))
      ..add(DiagnosticsProperty('isDone', isDone))
      ..add(DiagnosticsProperty('atDate', atDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoData &&
            const DeepCollectionEquality().equals(other.todo, todo) &&
            const DeepCollectionEquality().equals(other.isDone, isDone) &&
            const DeepCollectionEquality().equals(other.atDate, atDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(todo),
      const DeepCollectionEquality().hash(isDone),
      const DeepCollectionEquality().hash(atDate));

  @JsonKey(ignore: true)
  @override
  _$$_TodoDataCopyWith<_$_TodoData> get copyWith =>
      __$$_TodoDataCopyWithImpl<_$_TodoData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoDataToJson(this);
  }
}

abstract class _TodoData implements TodoData {
  const factory _TodoData(
      {required final String todo,
      required final bool isDone,
      required final DateTime atDate}) = _$_TodoData;

  factory _TodoData.fromJson(Map<String, dynamic> json) = _$_TodoData.fromJson;

  @override
  String get todo => throw _privateConstructorUsedError;
  @override
  bool get isDone => throw _privateConstructorUsedError;
  @override
  DateTime get atDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TodoDataCopyWith<_$_TodoData> get copyWith =>
      throw _privateConstructorUsedError;
}
