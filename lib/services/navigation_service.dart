import 'package:flutter/material.dart';
import 'package:str/di.dart';
import 'package:str/dialogs/edit_thing_dialog.dart';
import 'package:str/models/thing_model.dart';
import 'package:str/screens/thing_screen.dart';

class NavigationService {
  late final _navigatorKey = di.navigatorKey;

  BuildContext get context => _navigatorKey.currentContext!;

  Future<void> showThingDetails(ThingModel thing) async {
    _showBottomSheet(context, ThingScreen());
  }

  Future<ThingModel?> showEditThingDialog({ThingModel? thing}) async {
    return _showDialog(context, EditThingDialog(thing: thing));
  }

  static Future<T?> _showBottomSheet<T>(BuildContext context, Widget child) {
    return showModalBottomSheet<T>(
      context: context,
      builder: (_) => child,
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
