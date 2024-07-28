import 'dart:math';

import 'package:context_watch/context_watch.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:unfck/app_theme.dart';
import 'package:unfck/di.dart';
import 'package:unfck/models/day_model.dart';

class HeatmapView extends StatelessWidget {
  const HeatmapView({
    super.key,
    this.alignment = Alignment.center,
  });

  final AlignmentGeometry alignment;

  static const double dimension = 48;

  static const y = 1;

  @override
  Widget build(BuildContext context) {
    final vm = di.appViewModel..watch(context);
    final color = context.colorPrimary;

    final today = DayModel.today();
    // vertical offset to keep left column full and right column dynamic length like GitHub
    final offset = 7 - today.toDateTime().weekday;

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: context.colorGrey1,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.all(4),
          child: LayoutBuilder(
            builder: (context, layout) {
              final width = layout.biggest.width;
              final x = (width / dimension).floor();

              // make sure we show progress
              final minMaxValue = vm.value.visibleGoals.length;

              // Extract values and max value
              var maxValue = minMaxValue;
              final values = <int>[];
              for (var i = 0; i < y * x; i++) {
                final d = DayModel.fromDateTime(
                    today.toDateTime().subtract(Duration(days: i)));
                final val = vm.value.heatMap[d] ?? 0;
                maxValue = max(maxValue, val);
                values.add(val);
              }

              return SizedBox(
                height: y * dimension,
                width: x * dimension,
                child: Wrap(
                  runAlignment: y == 1
                      ? WrapAlignment.spaceBetween
                      : WrapAlignment.center,
                  direction: Axis.vertical,
                  verticalDirection: VerticalDirection.up,
                  textDirection: TextDirection.rtl,
                  children: [
                    SizedBox(
                      height: offset * dimension,
                    ),
                    for (var z in values)
                      SizedBox.square(
                        dimension: dimension,
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Color.lerp(
                                  context.colorGrey3,
                                  color,
                                  maxValue == 0 // no dates yet case
                                      ? 0
                                      : Curves.easeOutCubic
                                          .transform(z / maxValue),
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: z / maxValue == 1
                                  ? Center(
                                      child: Icon(
                                        PhosphorIconsFill.checkFat,
                                        size: dimension * 0.5,
                                        color: context.colorGrey1,
                                      ),
                                    )
                                  : null),
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
        ),
        if (vm.value.heatMap.isEmpty)
          Positioned.fill(
            child: ColoredBox(
              color: context.colorGrey1.withOpacity(0.7),
              child: Center(
                child: Text(
                  "Complete a goal to start your streak!",
                  style: context.textCaption,
                ),
              ),
            ),
          )
      ],
    );
  }
}
