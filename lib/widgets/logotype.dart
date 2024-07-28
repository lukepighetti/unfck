import 'package:flutter/material.dart';
import 'package:unfck/assets.dart';

class Logotype extends StatelessWidget {
  const Logotype({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.logotype.assetPath,
      height: 40,
      isAntiAlias: true,
      filterQuality: FilterQuality.high,
    );
  }
}
