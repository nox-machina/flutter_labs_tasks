import 'package:flutter/material.dart';
import './task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.amber[50],
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue,
        //example
        child: ListView(
          children: [
            TaskTile(),
            TaskTile(),
            TaskTile(),
            TaskTile(),
            TaskTile(),
            TaskTile(),
            TaskTile(),
            TaskTile(),
            TaskTile(),
            TaskTile(),
            TaskTile(),
            TaskTile(),
            TaskTile()
          ],
        ),
      ),
    );
  }
}
