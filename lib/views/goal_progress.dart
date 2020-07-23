import 'package:flutter/material.dart';

import 'goal_modify.dart';

class GoalProgress extends StatelessWidget {
  final int id;
  bool get isEditing => id != null;

  GoalProgress({this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GOAL NAME HERE"),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Text("GOAL DESCRIPTION HERE"),
            RaisedButton(
                child: Text("Edit", style: TextStyle(color: Colors.white)),
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => GoalModify(id: this.id)));
                })
          ],
        ),
      ),
    );
  }
}
