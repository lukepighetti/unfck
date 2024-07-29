import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:unfck/app_theme.dart';
import 'package:unfck/assets.dart';
import 'package:unfck/services/analytics.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MadeWithLove extends StatelessWidget {
  const MadeWithLove({super.key});

  void handleViewCreator() {
    launchUrlString('https://twitter.com/luke_pighetti');
    Analytics.tapViewCreator();
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          const TextSpan(text: "Made with "),
          WidgetSpan(
            child: Image.asset(
              Assets.twemojiRedHeart.assetPath,
              width: context.textCaption.fontSize! * 1.2,
            ),
          ),
          const TextSpan(text: " by "),
          TextSpan(
            text: "Luke Pighetti",
            style: TextStyle(color: context.colorPrimary),
            recognizer: TapGestureRecognizer()..onTap = handleViewCreator,
          ),
        ],
      ),
      style: context.textCaption,
      textAlign: TextAlign.center,
    );
  }
}
