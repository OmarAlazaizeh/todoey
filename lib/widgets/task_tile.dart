import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('New task'),
      // TODO: create a call back for the checkbox
      trailing: Checkbox(value: false, onChanged: null),
    );
  }
}
