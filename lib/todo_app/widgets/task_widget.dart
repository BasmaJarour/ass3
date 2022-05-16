import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  Function func;
  Function function_delete;

  Task task;
  TaskWidget(this.task, this.func, this.function_delete);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: task.isCompleted ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: Column(
        children: [
          CheckboxListTile(
            title: Text(task.title),
            value: task.isCompleted,
            onChanged: (v) {
              func(task);
            },
          ),
          IconButton(
              onPressed: () {
                function_delete(task);
                print("task delet");
              },
              icon: Icon(Icons.delete))
        ],
      ),
    );
  }
}
