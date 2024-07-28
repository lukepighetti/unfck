import 'package:dart_mappable/dart_mappable.dart';
import 'package:unfck/models/goal_model.dart';

part 'app_model.mapper.dart';

@MappableClass()
class AppModel with AppModelMappable {
  final Set<GoalModel> allGoals;

  late final Set<GoalModel> visibleGoals = {
    for (final x in allGoals)
      if (!x.hidden) x
  };

  AppModel({
    required this.allGoals,
  });

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
