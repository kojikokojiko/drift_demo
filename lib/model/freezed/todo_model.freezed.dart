// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoStateData {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isReadyData => throw _privateConstructorUsedError;
  List<TodoItemData> get todoItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateDataCopyWith<TodoStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateDataCopyWith<$Res> {
  factory $TodoStateDataCopyWith(
          TodoStateData value, $Res Function(TodoStateData) then) =
      _$TodoStateDataCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool isReadyData, List<TodoItemData> todoItems});
}

/// @nodoc
class _$TodoStateDataCopyWithImpl<$Res>
    implements $TodoStateDataCopyWith<$Res> {
  _$TodoStateDataCopyWithImpl(this._value, this._then);

  final TodoStateData _value;
  // ignore: unused_field
  final $Res Function(TodoStateData) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isReadyData = freezed,
    Object? todoItems = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadyData: isReadyData == freezed
          ? _value.isReadyData
          : isReadyData // ignore: cast_nullable_to_non_nullable
              as bool,
      todoItems: todoItems == freezed
          ? _value.todoItems
          : todoItems // ignore: cast_nullable_to_non_nullable
              as List<TodoItemData>,
    ));
  }
}

/// @nodoc
abstract class _$$_TodoStateDataCopyWith<$Res>
    implements $TodoStateDataCopyWith<$Res> {
  factory _$$_TodoStateDataCopyWith(
          _$_TodoStateData value, $Res Function(_$_TodoStateData) then) =
      __$$_TodoStateDataCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool isReadyData, List<TodoItemData> todoItems});
}

/// @nodoc
class __$$_TodoStateDataCopyWithImpl<$Res>
    extends _$TodoStateDataCopyWithImpl<$Res>
    implements _$$_TodoStateDataCopyWith<$Res> {
  __$$_TodoStateDataCopyWithImpl(
      _$_TodoStateData _value, $Res Function(_$_TodoStateData) _then)
      : super(_value, (v) => _then(v as _$_TodoStateData));

  @override
  _$_TodoStateData get _value => super._value as _$_TodoStateData;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isReadyData = freezed,
    Object? todoItems = freezed,
  }) {
    return _then(_$_TodoStateData(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadyData: isReadyData == freezed
          ? _value.isReadyData
          : isReadyData // ignore: cast_nullable_to_non_nullable
              as bool,
      todoItems: todoItems == freezed
          ? _value._todoItems
          : todoItems // ignore: cast_nullable_to_non_nullable
              as List<TodoItemData>,
    ));
  }
}

/// @nodoc

class _$_TodoStateData implements _TodoStateData {
  _$_TodoStateData(
      {this.isLoading = false,
      this.isReadyData = false,
      final List<TodoItemData> todoItems = const []})
      : _todoItems = todoItems;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isReadyData;
  final List<TodoItemData> _todoItems;
  @override
  @JsonKey()
  List<TodoItemData> get todoItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoItems);
  }

  @override
  String toString() {
    return 'TodoStateData(isLoading: $isLoading, isReadyData: $isReadyData, todoItems: $todoItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoStateData &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isReadyData, isReadyData) &&
            const DeepCollectionEquality()
                .equals(other._todoItems, _todoItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isReadyData),
      const DeepCollectionEquality().hash(_todoItems));

  @JsonKey(ignore: true)
  @override
  _$$_TodoStateDataCopyWith<_$_TodoStateData> get copyWith =>
      __$$_TodoStateDataCopyWithImpl<_$_TodoStateData>(this, _$identity);
}

abstract class _TodoStateData implements TodoStateData {
  factory _TodoStateData(
      {final bool isLoading,
      final bool isReadyData,
      final List<TodoItemData> todoItems}) = _$_TodoStateData;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isReadyData => throw _privateConstructorUsedError;
  @override
  List<TodoItemData> get todoItems => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TodoStateDataCopyWith<_$_TodoStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TempTodoItemData {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime? get limit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TempTodoItemDataCopyWith<TempTodoItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempTodoItemDataCopyWith<$Res> {
  factory $TempTodoItemDataCopyWith(
          TempTodoItemData value, $Res Function(TempTodoItemData) then) =
      _$TempTodoItemDataCopyWithImpl<$Res>;
  $Res call({String title, String description, DateTime? limit});
}

/// @nodoc
class _$TempTodoItemDataCopyWithImpl<$Res>
    implements $TempTodoItemDataCopyWith<$Res> {
  _$TempTodoItemDataCopyWithImpl(this._value, this._then);

  final TempTodoItemData _value;
  // ignore: unused_field
  final $Res Function(TempTodoItemData) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_TempTodoItemDataCopyWith<$Res>
    implements $TempTodoItemDataCopyWith<$Res> {
  factory _$$_TempTodoItemDataCopyWith(
          _$_TempTodoItemData value, $Res Function(_$_TempTodoItemData) then) =
      __$$_TempTodoItemDataCopyWithImpl<$Res>;
  @override
  $Res call({String title, String description, DateTime? limit});
}

/// @nodoc
class __$$_TempTodoItemDataCopyWithImpl<$Res>
    extends _$TempTodoItemDataCopyWithImpl<$Res>
    implements _$$_TempTodoItemDataCopyWith<$Res> {
  __$$_TempTodoItemDataCopyWithImpl(
      _$_TempTodoItemData _value, $Res Function(_$_TempTodoItemData) _then)
      : super(_value, (v) => _then(v as _$_TempTodoItemData));

  @override
  _$_TempTodoItemData get _value => super._value as _$_TempTodoItemData;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$_TempTodoItemData(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_TempTodoItemData implements _TempTodoItemData {
  _$_TempTodoItemData(
      {this.title = '', this.description = '', this.limit = null});

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final DateTime? limit;

  @override
  String toString() {
    return 'TempTodoItemData(title: $title, description: $description, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TempTodoItemData &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.limit, limit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(limit));

  @JsonKey(ignore: true)
  @override
  _$$_TempTodoItemDataCopyWith<_$_TempTodoItemData> get copyWith =>
      __$$_TempTodoItemDataCopyWithImpl<_$_TempTodoItemData>(this, _$identity);
}

abstract class _TempTodoItemData implements TempTodoItemData {
  factory _TempTodoItemData(
      {final String title,
      final String description,
      final DateTime? limit}) = _$_TempTodoItemData;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  DateTime? get limit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TempTodoItemDataCopyWith<_$_TempTodoItemData> get copyWith =>
      throw _privateConstructorUsedError;
}
