import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
//   @override
//   _TaskTileState createState() => _TaskTileState();
// }

// class _TaskTileState extends State<TaskTile> {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;

  TaskTile({this.taskTitle, this.isChecked, this.checkboxCallback});

  // void toggleCheckState(val) {
  //   setState(() {
  //     isChecked = val;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      contentPadding: EdgeInsets.fromLTRB(30, 0, 30, 0),
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      subtitle: Text("Do this pls"),
      value: isChecked,
      onChanged: checkboxCallback,
      secondary: Padding(
        child: Icon(Icons.view_compact_outlined),
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      ),
      activeColor: Colors.amber,
    );
  }
}
