import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo_todo/model/todo/todo_data.dart';
import 'package:riverpod_demo_todo/model/todo/todo_document.dart';
import 'package:riverpod_demo_todo/state/todo_state/todo_state.dart';
import 'package:riverpod_demo_todo/state/todo_state/todo_stream.dart';
import 'package:riverpod_demo_todo/view_model/top_view_model/top_view_model.dart';

import '../../constants.dart';

class TopScreen extends ConsumerWidget {
  const TopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TodoVm todoVm = TodoVm();
    todoVm.setRef(ref);

    return Scaffold(
      appBar: AppBar(
        title: Text(ref.watch(titleProvider)),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Consumer(builder: (context, ref, child) {
                final streamProvider = ref.watch(todoStreamProvider);
                return streamProvider.when(
                  loading: () => const CircularProgressIndicator(),
                  error: (error, stack) => Text('Error:$error'),
                  data: (data) {
                    return ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          TodoDocument todoData = data[index];
                          return Dismissible(
                            key: ObjectKey(data[index]),
                            direction: DismissDirection.endToStart,
                            onDismissed: (direction) {
                              todoVm.deleteTodo(todoData.documentId);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: SizedBox(
                                height: 70,
                                child: InkWell(
                                  onTap: () {
                                    todoVm.updateTodo(todoData.documentId,
                                        todoData.todo.isDone);
                                  },
                                  child: Card(
                                    color: todoData.todo.isDone
                                        ? Colors.black
                                        : Colors.lightBlueAccent,
                                    child: Container(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(todoData.todo.todo),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        });
                  },
                );
              }),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return ShowWindow();
              });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ShowWindow extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TodoVm todoVm = TodoVm();
    todoVm.setRef(ref);

    TextEditingController controller = TextEditingController();

    return Column(
      children: <Widget>[
        AlertDialog(
          title: const Text("TODO追加"),
          content: SingleChildScrollView(
            padding: EdgeInsets.all(10),
            child: ListBody(
              children: <Widget>[
                ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 200),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                    controller: controller,
                    onChanged: (text) {
                      ref.watch(todoWriteProvider.notifier).state =
                          text.toString();
                    },
                  ),
                )
              ],
            ),
          ),
          actions: <Widget>[
            // ボタン
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    if (controller.text == '') {
                      return;
                    }
                    TodoData todoData = TodoData(
                        todo: ref.watch(todoWriteProvider),
                        isDone: false,
                        atDate: DateTime.now());
                    todoVm.addTodo(todoData);
                    controller.text = '';
                    Navigator.pop(context);
                  },
                  child: const Text('追加する')),
            )
          ],
        ),
      ],
    );
  }
}
