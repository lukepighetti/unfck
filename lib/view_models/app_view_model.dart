import 'package:flutter/material.dart';
import 'package:unfck/di.dart';
import 'package:unfck/models/app_model.dart';
import 'package:unfck/models/day_model.dart';
import 'package:unfck/models/goal_model.dart';

class AppViewModel extends ValueNotifier<AppModel> {
  AppViewModel() : super(AppModel.create());

  void initialize() {
    try {
      final x = di.prefs.getString('app-view-model');
      if (x == null) throw Exception("Data not found in shared_preferences");
      value = AppModelMapper.fromJson(x);
    } catch (e) {
      debugPrint("failed to hydrate: $e");
    }
  }

  void toggleGoal(GoalModel goal) {
    value = value.copyWith(
      allGoals: {
        for (final g in value.allGoals)
          if (g.id == goal.id) g.toggleCompletion(DayModel.today()) else g
      },
    );
  }

  @override
  set value(AppModel x) {
    super.value = x;
    di.prefs.setString('app-view-model', x.toJson());
  }
}
