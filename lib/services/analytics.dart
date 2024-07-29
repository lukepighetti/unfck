import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:nanoid2/nanoid2.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Analytics {
  static Future<String> get installId async {
    final prefs = await SharedPreferences.getInstance();

    final currentId = prefs.getString('install-id');

    if (currentId != null && !currentId.contains("-")) {
      return currentId;
    } else {
      final newId = nanoid();
      prefs.setString('install-id', newId);
      return newId;
    }
  }

  static final sessionId = nanoid();

  static void _e(String name, [Map<String, dynamic> props = const {}]) async {
    if (kDebugMode) {
      debugPrint('[analytics] $name, $props');
    }
    await http.post(
      Uri.https('analytics.pighetti.dev', 'api/collections/analytics/records'),
      headers: {
        'Content-Type': 'application/json',
        'Key': 'Mv2BLHxeB1QVLtAld4ts6',
      },
      body: jsonEncode(
        {
          "app": "unfck",
          "debug": kDebugMode,
          "event": name,
          "distinct_id": await installId,
          "session_id": sessionId,
          "properties": props,
          "timestamp": DateTime.now().toUtc().toIso8601String(),
        },
      ),
    );
  }

  static void openApp() => _e('open_app');
  static void tapToggleGoal() => _e('tap_toggle_goal');
  static void tapToggleGoalHidden() => _e('tap_toggle_goal_hidden');
  static void reorderGoal() => _e('reorder_goal');
  static void openSettings() => _e('open_settings');
  static void hideGoal() => _e('hide_goal');
  static void tapViewCreator() => _e('tap_view_creator');
  static void tapViewRepository() => _e('tap_view_repository');
  static void tapSendEmail() => _e('tap_send_email');
}
