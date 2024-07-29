import 'package:context_watch/context_watch.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:unfck/app_theme.dart';
import 'package:unfck/di.dart';
import 'package:unfck/services/analytics.dart';
import 'package:unfck/widgets/goal_settings_tile.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  void initState() {
    Analytics.openSettings();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final vm = di.appViewModel..watch(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                Text(
                  "Settings",
                  style: context.textHeadline,
                ),
                Spacer(),
                IconButton.filledTonal(
                  onPressed: () => di.navigation.pop(),
                  icon: Icon(PhosphorIcons.x()),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(24) - EdgeInsets.only(top: 24),
              children: [
                Text(
                  "Goals".toUpperCase(),
                  style: context.textCaption,
                ),
                SizedBox(height: 12),
                ReorderableListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  buildDefaultDragHandles: false,
                  onReorder: (int oldIndex, int newIndex) {
                    /// https://api.flutter.dev/flutter/widgets/ReorderCallback.html
                    if (oldIndex < newIndex) {
                      newIndex -= 1;
                    }
                    if (oldIndex == newIndex) return;
                    vm.reorderGoals(oldIndex, newIndex);
                    Analytics.reorderGoal();
                  },
                  children: [
                    for (final (i, goal) in vm.value.sortedAllGoals.indexed)
                      Padding(
                        key: ValueKey(goal.id),
                        padding: const EdgeInsets.only(bottom: 12),
                        child: GoalSettingsTile(
                          goal: goal,
                          reorderableItemIndex: i,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
