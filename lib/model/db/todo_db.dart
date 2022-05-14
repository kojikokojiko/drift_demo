import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:drift/drift.dart';
import 'dart:io';


part 'todo_db.g.dart';

class TodoItem extends Table {
  IntColumn get id => integer().autoIncrement()(); //primary key

  TextColumn get title =>
      text().withDefault(const Constant('')).withLength(min: 1)();
  TextColumn get description => text().withDefault(const Constant(''))();
  DateTimeColumn get limitDate => dateTime().nullable()();

}


LazyDatabase _openConnection() {
  return LazyDatabase(() async {

    final dbFolder = await getApplicationDocumentsDirectory();

    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}


@DriftDatabase(tables: [TodoItem])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  //全てのデータ取得
  Future<List<TodoItemData>> readAllTodoData() => select(todoItem).get();
  //SELECT * FROM ToDoItemTable

  //追加
  Future writeTodo(TodoItemCompanion data) => into(todoItem).insert(data);
  //INSERT INTO ToDoItemTable VALUES(id, 'title', 'description', 'limitDate')

  //更新
  Future updateTodo(TodoItemData data) => update(todoItem).replace(data);
  //UPDATE ToDoItemTable SET title = 'title', description = 'description', limitDate = 'limitDate'

  //削除
  Future deleteTodo(int id) =>
      (delete(todoItem)..where((it) => it.id.equals(id))).go();
//DELETE FROM ToDoItemTable WHERE id = id
}