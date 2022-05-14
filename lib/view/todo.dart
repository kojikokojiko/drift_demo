import 'package:drift_demo/model/db/todo_db.dart';
import 'package:drift_demo/view/todo_vm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/freezed/todo_model.dart';

// final limitProvier = StateProvider<DateTime?>((ref) => null);

class Todo extends HookConsumerWidget  {
  List<Widget> _buildTodoList(
      List<TodoItemData> todoItemList, TodoDatabaseNotifier db) {
    List<Widget> list = [];
    for (TodoItemData item in todoItemList) {
      Widget tile = Slidable(
        child: ListTile(
            title: Text(item.title),
            subtitle:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(item.description == null ? "" : item.description),
                    Text(item.limitDate == null ? "" : item.limitDate.toString()),
                  ],
                )),
        endActionPane: ActionPane(
          motion: DrawerMotion(),
          children: [
            SlidableAction(
              onPressed: (_) {
                db.deleteData(item);
              },
              flex: 1,
              icon: Icons.delete,
            ),
          ],
        ),
      );
      list.add(tile);
    }
    return list;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoState = ref.watch(todoDatabaseProvider);
    final todoProvider = ref.watch(todoDatabaseProvider.notifier);

    List<TodoItemData> todoItems = todoProvider.state.todoItems;

    TempTodoItemData temp = TempTodoItemData();
    List<Widget> tiles = _buildTodoList(todoItems, todoProvider);
    // DateTime? limit = ref.watch(limitProvier);

    return Scaffold(
      body: ListView(
        children: tiles,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          await showModalBottomSheet(
            context: context,
            useRootNavigator: true,
            isScrollControlled: true,
            builder: (BuildContext context2) {
              // limit=null;
              return HookConsumer(
                builder: (context3, ref, _) {

                  final limit = useState<DateTime?>(null);
                  print(limit);

                  return Padding(
                    padding: MediaQuery.of(context3).viewInsets,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "タスク名",
                          ),
                          onChanged: (value) {
                            temp = temp.copyWith(title: value);
                          },
                          onFieldSubmitted: (value) {
                            temp = temp.copyWith(title: value);
                          },
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: '説明',
                          ),
                          onChanged: (value) {
                            temp = temp.copyWith(description: value);
                          },
                          onSubmitted: (value) {
                            temp = temp.copyWith(description: value);
                          },
                        ),

                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children:[
                            ElevatedButton(
                              onPressed: () {
                                DatePicker.showDateTimePicker(
                                  context,
                                  showTitleActions: true,
                                  minTime: DateTime.now(),
                                  onConfirm: (date) {
                                    limit.value = date;
                                    print(limit);
                                    temp = temp.copyWith(limit: date);
                                  },
                                  currentTime: DateTime.now(),
                                  locale: LocaleType.jp,
                                );
                              },
                              child: Row(
                                children: [
                                  Icon(Icons.calendar_today),
                                  Text(limit.value == null
                                      ? ""
                                      : limit.value.toString().substring(0, 10)),
                                ],
                              ),
                            ),
                            Container(
                              width: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                todoProvider.writeData(temp);
                                Navigator.pop(context3);
                              },
                              child: Text('OK'),
                            ),

                          ]
                        )

                      ],
                    ),
                  );
                },
              );
            },
          );
          temp = TempTodoItemData();

        },


      ),
    );
  }
}
