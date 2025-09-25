import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function? addTaskCallback;
  const AddTaskScreen({super.key, this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;

    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
          ),
          TextField(
            // decoration: InputDecoration(
            //   enabledBorder: UnderlineInputBorder(
            //     borderSide: BorderSide(color: Colors.lightBlueAccent),
            //   ),
            //   focusedBorder: UnderlineInputBorder(
            //     borderSide: BorderSide(color: Colors.lightBlueAccent),
            //   ),
            // ),
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(height: 10),
          TextButton(
            onPressed: () {
              addTaskCallback!(newTaskTitle);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              shape: BeveledRectangleBorder(),
            ),
            child: Text('Add task', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
