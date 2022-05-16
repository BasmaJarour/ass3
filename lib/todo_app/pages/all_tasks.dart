import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/data/tasks_data.dart';
import 'package:state_managment/todo_app/widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  Function func;
  Function function_delete;
  AllTasksScreen(this.func, this.function_delete);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        shrinkWrap: true,
        itemCount: tasksList.length,
        itemBuilder: (context, index) {
          return TaskWidget(tasksList[index], func, function_delete);
        });
  }
}
