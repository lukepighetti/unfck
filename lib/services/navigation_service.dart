import 'package:flutter/material.dart';
import 'package:unfck/di.dart';
import 'package:unfck/screens/settings_screen.dart';

class NavigationService {
  late final _navigatorKey = di.navigatorKey;

  BuildContext get context => _navigatorKey.currentContext!;

  Future<void> pop<T>() {
    return Navigator.of(context).maybePop();
  }

  Future<void> showSettingsScreen() async {
    _showBottomSheet(context, SettingsScreen());
  }

  // Future<ThingModel?> showEditThingDialog({ThingModel? thing}) async {
  //   return _showDialog(context, EditThingDialog(thing: thing));
  // }

  static Future<T?> _showBottomSheet<T>(BuildContext context, Widget child) {
    return showModalBottomSheet<T>(
      context: context,
      builder: (_) => child,
      clipBehavior: Clip.antiAlias,
      scrollControlDisabledMaxHeightRatio: 0.85,
    );
  }

  static Future<T?> _showDialog<T>(BuildContext context, Widget child) {
    return showDialog<T>(
      context: context,
      builder: (_) => Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Material(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(20),
            elevation: 10,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24) + EdgeInsets.only(top: 12),
                  child: child,
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => Navigator.of(context).maybePop(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
