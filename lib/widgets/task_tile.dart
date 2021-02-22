import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void toggleCheckState(val) {
    setState(() {
      isChecked = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text("Task #01"),
      subtitle: Text("Do this pls"),
      value: isChecked,
      onChanged: (val) {
        toggleCheckState(val);
      },
      activeColor: Colors.amber,
    );
  }
}
