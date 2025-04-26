import 'package:flutter/material.dart';
import 'package:todoey_flutter_app/models/task.dart';
import 'package:todoey_flutter_app/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
    required this.taskList,
    required this.checkboxCallback,
  });

  final List<Task> taskList;
  final Function(bool?, int) checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: taskList.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: taskList[index].name,
          isChecked: taskList[index].isDone,
          checkboxCallback: (value) => checkboxCallback(value, index),
        );
      },
    );

    // children: [
    //   TaskTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone),
    //   TaskTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone),
    //   TaskTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone),
    // ],
    // );
  }
}
