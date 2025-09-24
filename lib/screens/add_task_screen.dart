import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          ),
          SizedBox(height: 10),
          TextButton(
            onPressed: null,
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
