import 'package:dart_mappable/dart_mappable.dart';
import 'package:unfck/models/day_model.dart';
import 'package:unfck/models/goal_model.dart';

part 'app_model.mapper.dart';

@MappableClass()
class AppModel with AppModelMappable {
  final Set<GoalModel> allGoals;

  AppModel({
    required this.allGoals,
  });

  late final heatMap = () {
    final result = <DayModel, int>{};
    for (final g in allGoals) {
      for (final d in g.completions) {
        result[d] ??= 0;
        result[d] = result[d]! + 1;
      }
    }
    return result;
  }();

  late final Set<GoalModel> visibleGoals = {
    for (final x in allGoals)
      if (!x.hidden) x
  };

  AppModel.create()
      : allGoals = {
          for (final (i, x) in [
            'Stay hydrated',
            'Sleep',
            'Eat healthy',
            'Thermal',
            'Relationships',
            'Community',
            'Intimacy',
            'Define success',
            'Stay positive',
            'Get outside',
            'Reflect',
          ].indexed)
            GoalModel.create(
              x,
              order: i,
            ),
          for (final (i, x) in [
            'Custom 1',
            'Custom 2',
            'Custom 3',
            'Custom 4',
            'Custom 5'
          ].indexed)
            GoalModel.create(
              x,
              order: 100 + i,
              hidden: true,
            ),
        };
}
