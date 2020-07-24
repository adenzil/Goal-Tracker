import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:goal_tracker/services/goals_service.dart';

import 'goal_modify.dart';

class GoalProgress extends StatefulWidget {
  final int id;
  bool get isEditing => id != null;

  GoalProgress({this.id});

  @override
  _GoalProgressState createState() => _GoalProgressState();
}

class _GoalProgressState extends State<GoalProgress> {
  GoalsService get service => GetIt.I<GoalsService>();

  var goal;

  @override
  void initState() {
    goal = service.getGoalById(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(goal.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Text(goal.description),
            RaisedButton(
                child: Text("Edit", style: TextStyle(color: Colors.white)),
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => GoalModify(id: goal.id)));
                })
          ],
        ),
      ),
    );
  }
}
