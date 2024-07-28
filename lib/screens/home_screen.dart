import 'package:context_watch/context_watch.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:unfck/app_theme.dart';
import 'package:unfck/di.dart';
import 'package:unfck/widgets/logotype.dart';
import 'package:unfck/widgets/made_with_love.dart';
import 'package:unfck/widgets/thing_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final vm = di.appViewModel..watch(context);

    return Material(
      child: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Opacity(
                opacity: 0,
                child: IconButton(
                  icon: SizedBox(),
                  onPressed: null,
                ),
              ),
              Logotype(),
              IconButton.filledTonal(
                icon: Icon(PhosphorIcons.stack()),
                color: context.colorPrimary,
                onPressed: () {
                  // TODO:
                },
              ),
            ],
          ),
          SizedBox(height: 24),
          for (final goal in vm.value.visibleGoals)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: GoalCard(goal: goal),
            ),
          SizedBox(height: 24),
          MadeWithLove(),
        ],
      ),
    );
  }
}
