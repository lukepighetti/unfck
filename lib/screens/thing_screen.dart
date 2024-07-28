import 'package:flutter/material.dart';

class ThingScreen extends StatefulWidget {
  const ThingScreen({super.key});

  @override
  State<ThingScreen> createState() => _ThingScreenState();
}

class _ThingScreenState extends State<ThingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: SafeArea(
        child: Placeholder(),
      ),
    );
  }
}
