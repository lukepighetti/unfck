import 'package:flutter/material.dart';
import 'package:unfck/assets.dart';

class Logotype extends StatelessWidget {
  const Logotype({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.logotype.assetPath,
      // fit: BoxFit.contain,
      height: 36,
      // isAntiAlias: true,
      // filterQuality: FilterQuality.high,
    );
  }
}
