import 'package:drift/drift.dart';
import 'package:drift_demo/model/db/todo_db.dart';
import 'package:drift_demo/model/freezed/todo_model.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";

final todoDatabaseProvider = StateNotifierProvider((_) {
  TodoDatabaseNotifier notify = TodoDatabaseNotifier();
  notify.readData();
  //初期化処理
  return notify;
});

class TodoDatabaseNotifier extends StateNotifier<TodoStateData>{
  TodoDatabaseNotifier():super(TodoStateData());


  final _db=MyDatabase();

  writeData(TempTodoItemData data) async {
    if (data.title.isEmpty) {
      return;
    }
    TodoItemCompanion entry = TodoItemCompanion(
      title: Value(data.title),
      description: Value(data.description),
      limitDate: Value(data.limit),
      // isNotify: Value(data.isNotify),
    );
    state = state.copyWith(isLoading: true);
    await _db.writeTodo(entry);
    readData();
    //書き込むたびにデータベースを読み込む
  }

  //削除処理部分
  deleteData(TodoItemData data) async {
    state = state.copyWith(isLoading: true);
    await _db.deleteTodo(data.id);
    readData();
    //削除するたびにデータベースを読み込む
  }

  //更新処理部分
  updateData(TodoItemData data) async {
    if (data.title.isEmpty) {
      return;
    }
    state = state.copyWith(isLoading: true);
    await _db.updateTodo(data);
    readData();
    //更新するたびにデータベースを読み込む
  }

  //データ読み込み処理
  readData() async {
    state = state.copyWith(isLoading: true);

    final todoItems = await _db.readAllTodoData();

    state = state.copyWith(
      isLoading: false,
      isReadyData: true,
      todoItems: todoItems,
    );
  }
}