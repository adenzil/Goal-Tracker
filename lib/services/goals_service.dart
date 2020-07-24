import 'package:goal_tracker/models/goal_for_listing.dart';

class GoalsService {
  List<GoalForListing> getGoalsList() {
    return [
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
  }

  getGoalById(int id) {
    return getGoalsList().firstWhere((i) => i.id == id);
  }
}
