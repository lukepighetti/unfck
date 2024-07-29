import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:unfck/app_theme.dart';
import 'package:unfck/di.dart';
import 'package:unfck/models/goal_model.dart';
import 'package:unfck/services/analytics.dart';

class GoalSettingsTile extends StatefulWidget {
  const GoalSettingsTile(
      {super.key, required this.goal, this.reorderableItemIndex});

  final GoalModel goal;

  final int? reorderableItemIndex;

  @override
  State<GoalSettingsTile> createState() => _GoalSettingsTileState();
}

class _GoalSettingsTileState extends State<GoalSettingsTile> {
  var hovering = false;
  late final controller = TextEditingController(text: widget.goal.title);
  late final focusNode = FocusNode();

  void saveTitle() {
    final newTitle = controller.text.trim();
    if (newTitle.isEmpty) return;
    di.appViewModel.updateGoalTitle(widget.goal, newTitle);
    focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    final goal = widget.goal;
    final vm = di.appViewModel;

    return Material(
      borderRadius: BorderRadius.circular(12),
      clipBehavior: Clip.hardEdge,
      elevation: 10,
      color: context.colorGrey1,
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextField(
                    controller: controller,
                    focusNode: focusNode,
                    onSubmitted: (_) => saveTitle(),
                    onTapOutside: (_) => saveTitle(),
                    style: context.textBody,
                    minLines: 1,
                    maxLines: 5,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
              ),
            ),
            Center(
              child: IconButton(
                onPressed: () {
                  vm.toggleGoalHidden(goal);
                  Analytics.tapToggleGoalHidden();
                },
                icon: Icon(
                  widget.goal.hidden
                      ? PhosphorIcons.eyeClosed()
                      : PhosphorIcons.eye(),
                ),
              ),
            ),
            SizedBox(width: 8),
            ReorderableDragStartListener(
              index: widget.reorderableItemIndex ?? 0,
              enabled: widget.reorderableItemIndex != null,
              child: MouseRegion(
                cursor: SystemMouseCursors.grab,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  color: context.colorGrey3,
                  child: Center(
                    child: Icon(PhosphorIcons.dotsSixVertical()),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
