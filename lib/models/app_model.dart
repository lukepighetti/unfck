import 'package:dart_mappable/dart_mappable.dart';
import 'package:unfck/models/day_model.dart';
import 'package:unfck/models/goal_model.dart';

part 'app_model.mapper.dart';

@MappableClass()
class AppModel with AppModelMappable {
  final Set<GoalModel> allGoals;

  late final List<GoalModel> sortedAllGoals = [...allGoals]
    ..sort((a, b) => a.order.compareTo(b.order));

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

  late final Set<GoalModel> sortedVisibleGoals = {
    for (final x in sortedAllGoals)
      if (!x.hidden) x
  };

  AppModel.create()
      : allGoals = {
          for (final (i, x) in [
            'Drink enough water',
            'Sleep 7-8 hours',
            'Eat the right amount of healthy food',
            'Exercise or do manual labor',
            'Connect with a friend or loved one',
            'Be positive, break worry loops, be patient',
            'Spend some time outdoors',
          ].indexed)
            GoalModel.create(
              x,
              order: i.toDouble(),
            ),
          for (final (i, x) in [
            'Spend quality time with your pet',
            'Get out into the community',
            'Invest in intimacy with your partner',
            'Make progress towards your definition of success',
            'Reflect on the most exciting parts of your day',
            'Sauna or hot-cold-hot-cold shower',
            'Custom 1',
            'Custom 2',
            'Custom 3',
            'Custom 4',
            'Custom 5'
          ].indexed)
            GoalModel.create(
              x,
              order: (100 + i).toDouble(),
              hidden: true,
            ),
        };
}
