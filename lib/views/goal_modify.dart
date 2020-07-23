import 'package:flutter/material.dart';

class GoalModify extends StatelessWidget {
  final int id;
  bool get isEditing => id != null;

  GoalModify({this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEditing ? "Modify your Goal" : "Create a new Goal"),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "State your goal"),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Add a description"),
            ),
            Padding(padding: EdgeInsets.only(top: 36.0)),
            RaisedButton(
                child: Text("Submit", style: TextStyle(color: Colors.white)),
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).pop();
                })
          ],
        ),
      ),
    );
  }
}
