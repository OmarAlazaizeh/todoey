import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({super.key});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'New task',
        style: TextStyle(
          decoration: isChecked!
              ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked!,
        toggleCheckboxState: (bool? checkboxState) {
          setState(() {
            isChecked = checkboxState;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final ValueChanged<bool?>? toggleCheckboxState;
  const TaskCheckbox({
    super.key,
    required this.checkboxState,
    required this.toggleCheckboxState,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: toggleCheckboxState,
    );
  }
}
