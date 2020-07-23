import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:goal_tracker/services/goals_service.dart';
import 'package:goal_tracker/views/goal_list.dart';

void setupLocator() {
  GetIt.I.registerLazySingleton(() => GoalsService());
  GetIt.I<GoalsService>();
}

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GoalList(),
    );
  }
}
