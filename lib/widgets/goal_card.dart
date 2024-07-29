import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:unfck/app_theme.dart';
import 'package:unfck/di.dart';
import 'package:unfck/models/goal_model.dart';
import 'package:unfck/services/analytics.dart';

class GoalCard extends StatefulWidget {
  const GoalCard({super.key, required this.goal});

  final GoalModel goal;

  @override
  State<GoalCard> createState() => _GoalCardState();
}

class _GoalCardState extends State<GoalCard> {
  var hovering = false;

  @override
  Widget build(BuildContext context) {
    final goal = widget.goal;

    return Material(
      borderRadius: BorderRadius.circular(12),
      clipBehavior: Clip.hardEdge,
      elevation: 10,
      color: context.colorGrey1,
      child: InkWell(
        onHover: (hovering) => setState(() => this.hovering = hovering),
        onTap: () async {
          di.appViewModel.toggleGoal(goal);
          Analytics.tapToggleGoal();
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: DefaultTextStyle(
            style: context.textGoalCardTitle.copyWith(color: context.colorForeground),
            child: Row(
              children: [
                Expanded(
                  child: Text(goal.title),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(
                      PhosphorIconsThin.circle,
                      color: context.colorPrimary,
                      size: 32,
                    ),
                    Opacity(
                      opacity: goal.completedToday ? 1 : 0,
                      child: Icon(
                        PhosphorIconsFill.circle,
                        color: context.colorPrimary,
                        size: 32,
                      ),
                    ),
                    Opacity(
                      opacity: switch ((hovering, goal.completedToday)) {
                        (true, false) => 0.5,
                        (_, true) => 1.0,
                        (_, false) => 0.0,
                      },
                      child: Icon(
                        PhosphorIconsBold.check,
                        size: 18,
                        color: goal.completedToday
                            ? context.colorBackground
                            : context.colorPrimary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
