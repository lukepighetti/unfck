import 'package:context_watch/context_watch.dart';
import 'package:flutter/material.dart';
import 'package:unfck/app_theme.dart';
import 'package:unfck/di.dart';
import 'package:unfck/screens/home_screen.dart';
import 'package:unfck/services/analytics.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initialize();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Analytics.openApp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ContextWatch.root(
      child: MaterialApp(
        title: 'Unfck',
        theme: appTheme(Brightness.light),
        darkTheme: appTheme(Brightness.dark),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
        navigatorKey: di.navigatorKey,
      ),
    );
  }
}
