import 'package:appearance/appearance.dart';
import 'package:core/core.dart';
import 'package:fitness_tracker/navigation/navigation.dart';
import 'package:flutter/material.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  late final GoRouter _router = buildRouter();

  @override
  Widget build(BuildContext context) {
    final theme = buildTheme();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: theme,
      routerConfig: _router,
    );
  }
}
