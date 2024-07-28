import 'package:context_watch/context_watch.dart';
import 'package:flutter/material.dart';
import 'package:str/app_theme.dart';
import 'package:str/di.dart';
import 'package:str/widgets/made_with_love.dart';
import 'package:str/widgets/thing_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final vm = di.appViewModel..watch(context);
    print(vm.value);

    return Material(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Text(
              "What are the 5 most exciting things that\nhave happened in your life recently?",
              style: context.textBody,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            for (final (i, x) in vm.value.fiveThings.indexed) ...[
              if (x == null)
                ThingCard.empty(
                  thingNumber: i + 1,
                )
              else
                ThingCard(
                  thing: x,
                  thingNumber: i + 1,
                ),
              SizedBox(height: 8),
            ],
            Spacer(),
            SizedBox(height: 24),
            MadeWithLove(),
          ],
        ),
      ),
    );
  }
}
