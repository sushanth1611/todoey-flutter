import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newTaskTitle = value;
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
              ),
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle!);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
