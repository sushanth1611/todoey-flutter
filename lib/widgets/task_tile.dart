import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function (bool?) checkboxCallback;
  final Function removeTask;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.removeTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      leading: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      trailing: IconButton(
        icon: Icon(
          Icons.delete,
          color: Colors.red,
        ),
        onPressed: removeTask(),
      ),
    );
  }
}

