import 'package:flutter/material.dart';
import 'package:goal_tracker/models/goal_for_listing.dart';

final goals = [
  new GoalForListing(
    id: "1",
    name: "Goal 1",
    description: "Goal 1 description",
    duration: 7,
  ),
  new GoalForListing(
    id: "2",
    name: "Goal 2",
    description: "Goal 2 description",
    duration: 21,
  ),
  new GoalForListing(
    id: "3",
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
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        itemBuilder: (_, i) {
          return ListTile(
            title: Text(
              goals[i].name,
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            subtitle: Text(goals[i].description),
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
