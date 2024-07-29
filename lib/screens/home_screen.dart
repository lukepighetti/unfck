import 'package:context_watch/context_watch.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:unfck/app_theme.dart';
import 'package:unfck/di.dart';
import 'package:unfck/services/analytics.dart';
import 'package:unfck/views/heatmap_view.dart';
import 'package:unfck/widgets/logotype.dart';
import 'package:unfck/widgets/made_with_love.dart';
import 'package:unfck/widgets/thing_card.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final vm = di.appViewModel..watch(context);

    return Scaffold(
      body: ListView(
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
                  di.navigation.showSettingsScreen();
                },
              ),
            ],
          ),
          SizedBox(height: 24),
          Text(
            "Day Streak".toUpperCase(),
            style: context.textCaption,
          ),
          SizedBox(height: 12),
          HeatmapView(),
          SizedBox(height: 24),
          Text(
            "Goals".toUpperCase(),
            style: context.textCaption,
          ),
          SizedBox(height: 12),
          for (final goal in vm.value.sortedVisibleGoals)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: GoalCard(goal: goal),
            ),
          SizedBox(height: 24),
          Row(
            children: [
              IconButton.filledTonal(
                icon: Icon(PhosphorIcons.envelopeSimple()),
                onPressed: () {
                  launchUrlString('mailto:lukepighetti+unfck@gmail.com');
                  Analytics.tapSendEmail();
                },
              ),
              Expanded(
                child: MadeWithLove(),
              ),
              IconButton.filledTonal(
                icon: Icon(PhosphorIcons.githubLogo()),
                onPressed: () {
                  launchUrlString('https://github.com/lukepighetti/unfck');
                  Analytics.tapViewRepository();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
