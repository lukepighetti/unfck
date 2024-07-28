import 'package:context_watch/context_watch.dart';
import 'package:flutter/material.dart';
import 'package:str/app_theme.dart';
import 'package:str/di.dart';
import 'package:str/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ContextWatch.root(
      child: MaterialApp(
        title: 'Storyteller',
        theme: appTheme(),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
        navigatorKey: di.navigatorKey,
      ),
    );
  }
}
