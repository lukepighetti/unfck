import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:str/app_theme.dart';
import 'package:str/assets.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MadeWithLove extends StatelessWidget {
  const MadeWithLove({super.key});

  void handleViewCreator() {
    launchUrlString('https://twitter.com/luke_pighetti');
    // TODO: Analytics.tapViewCreator();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Text.rich(
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
      ),
    );
  }
}
