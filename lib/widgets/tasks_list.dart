import 'package:flutter/material.dart';
import './task_tile.dart';

class TasksList extends StatelessWidget {
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
          removeTop: true,
        ),
      ),
    );
  }
}
