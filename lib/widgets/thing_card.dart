import 'package:flutter/material.dart';
import 'package:str/app_theme.dart';
import 'package:str/di.dart';
import 'package:str/models/thing_model.dart';

class ThingCard extends StatelessWidget {
  // show text
  // tap to view thing details
  const ThingCard({super.key, required this.thing, required this.thingNumber});

  // show empty thing state
  // tap to create thing
  const ThingCard.empty({super.key, required this.thingNumber}) : thing = null;

  final int thingNumber;

  final ThingModel? thing;

  @override
  Widget build(BuildContext context) {
    final thing = this.thing;

    return Material(
      borderRadius: BorderRadius.circular(12),
      clipBehavior: Clip.hardEdge,
      elevation: 10,
      color: Theme.of(context).colorScheme.surfaceContainerLowest,
      child: InkWell(
        onTap: () async {
          if (thing == null) {
            final t = await di.navigation.showEditThingDialog();
            if (t != null) di.appViewModel.setThingIfEmpty(thingNumber, t);
          } else {
            di.navigation.showThingDetails(thing);
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: DefaultTextStyle(
            style: context.textHeadline.copyWith(
              color:
                  thing == null ? context.colorGrey2 : context.colorForeground,
            ),
            child: Row(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 20),
                  child: Text(
                    "$thingNumber.",
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(width: 24),
                Expanded(
                  child: Row(
                    children: [
                      thing == null
                          ? Text("Add an event")
                          : Text(thing.summary),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
