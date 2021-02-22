import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isDone = false;

  void toggleCheckbox(_cbState) {
    setState(() {
      isDone = _cbState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        toggleCheckbox(isDone);
      },
      title: Text(
        "Task #01",
        style: TextStyle(
            color: Colors.black,
            decoration: isDone ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
        cbState: isDone,
        toggleCbState: toggleCheckbox,
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool cbState;
  final Function toggleCbState;

  TaskCheckbox({this.cbState, this.toggleCbState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.amber,
      value: cbState,
      onChanged: toggleCbState,
    );
  }
}
