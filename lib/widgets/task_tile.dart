import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool? isChecked;
  final ValueChanged<bool?>? checkboxCallback;

  const TaskTile({
    super.key,
    required this.taskTitle,
    this.isChecked,
    this.checkboxCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked!
              ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        // onChanged: toggleCheckboxState,
        onChanged: checkboxCallback,
      ),
    );
  }
}
