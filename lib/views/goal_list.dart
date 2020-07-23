import 'package:flutter/material.dart';
import 'package:goal_tracker/models/goal_for_listing.dart';
import 'package:goal_tracker/views/goal_delete.dart';
import 'package:goal_tracker/views/goal_modify.dart';

import 'goal_progress.dart';

final goals = [
  new GoalForListing(
    id: 1,
    name: "Goal 1",
    description: "Goal 1 description",
    duration: 7,
  ),
  new GoalForListing(
    id: 2,
    name: "Goal 2",
    description: "Goal 2 description",
    duration: 21,
  ),
  new GoalForListing(
    id: 3,
    name: "Goal 3",
    description: "Goal 3 description",
    duration: 30,
  ),
];

class GoalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Goals'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => GoalModify()));
        },
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        itemBuilder: (_, i) {
          return Dismissible(
            key: ValueKey(goals[i].id),
            direction: DismissDirection.startToEnd,
            onDismissed: (direction) {},
            confirmDismiss: (direction) async {
              final result = await showDialog(
                  context: context, builder: (_) => GoalDelete());
              return result;
            },
            child: ListTile(
              title: Text(
                goals[i].name,
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              subtitle: Text(goals[i].description),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => GoalProgress(id: goals[i].id)));
              },
            ),
            background: Container(
              color: Colors.red,
              padding: EdgeInsets.only(left: 16),
              child: Align(
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
                alignment: Alignment.centerLeft,
              ),
            ),
          );
        },
        itemCount: goals.length,
        separatorBuilder: (_, __) => Divider(
          height: 1,
          color: Colors.green,
        ),
      ),
    );
  }
}
