import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function deleteTask;
  TaskTile(
      {this.isChecked, this.taskTitle, this.checkboxCallback, this.deleteTask});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: isChecked
            ? TextStyle(
                decoration: TextDecoration.lineThrough,
                color: Colors.white,
              )
            : TextStyle(
                color: Colors.white,
              ),
      ),
      trailing: Checkbox(
        activeColor: Color(0xff757575),
        hoverColor: Color(0xFF111422),
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      onLongPress: deleteTask,
    );
  }
}
