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
      contentPadding: EdgeInsets.fromLTRB(30, 0, 30, 0),
      title: Text(
        "Task #01",
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      subtitle: Text("Do this pls"),
      value: isChecked,
      onChanged: (val) {
        toggleCheckState(val);
      },
      secondary: Padding(
        child: Icon(Icons.view_compact_outlined),
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      ),
      activeColor: Colors.amber,
    );
  }
}
