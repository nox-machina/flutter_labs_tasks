import 'package:flutter/material.dart';
import './task_tile.dart';
import '../models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(title: "Task #01", isDone: false),
    Task(title: "Task #02", isDone: false),
    Task(title: "Task #03", isDone: false),
    Task(title: "Task #04", isDone: false),
    Task(title: "Task #05", isDone: false),
    Task(title: "Task #06", isDone: false)
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue,
        // wrapping in MediaQuery.removePadding to enforce custom listView padding values
        child: MediaQuery.removePadding(
          context: context,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return TaskTile(
                taskTitle: tasks[index].title,
                isChecked: tasks[index].isDone,
                checkboxCallback: (bool cbState) {
                  setState(() {
                    tasks[index].toggleDone();
                  });
                },
              );
            },
            itemCount: tasks.length,
          ),
          removeTop: true,
        ),
      ),
    );
  }
}
