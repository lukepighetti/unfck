import 'package:dart_mappable/dart_mappable.dart';
import 'package:unfck/models/day_model.dart';
import 'package:nanoid2/nanoid2.dart';

part 'goal_model.mapper.dart';

@MappableClass()
class GoalModel with GoalModelMappable {
  final String id;
  final String defaultTitle;
  final String? customTitle;
  final Set<DayModel> completions;
  final bool hidden;
  final double order;

  late final title = customTitle ?? defaultTitle;

  late final bool completedToday = completions.contains(DayModel.today());

  GoalModel({
    required this.id,
    required this.defaultTitle,
    required this.customTitle,
    required this.completions,
    required this.hidden,
    required this.order,
  });

  GoalModel toggleCompletion(DayModel x) {
    if (completions.contains(x)) {
      final newCompletions = {...completions}..remove(x);
      return copyWith(completions: newCompletions);
    } else {
      return copyWith(completions: {...completions, x});
    }
  }

  GoalModel.create(
    this.defaultTitle, {
    required this.order,
    this.hidden = false,
  })  : id = nanoid(),
        customTitle = null,
        completions = {};
}
