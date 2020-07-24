import 'package:flutter/material.dart';

class GoalDelete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Warning"),
      content: Text(
          "Are you sure you want to delete the goal and all its progress ?"),
      actions: <Widget>[
        FlatButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: Text(
              "YES",
              style: TextStyle(color: Colors.red),
            )),
        FlatButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: Text("NO"))
      ],
    );
  }
}
