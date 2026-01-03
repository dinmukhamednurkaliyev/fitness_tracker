import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:fitness_tracker_application/navigation/navigation.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = buildTheme();
    final router = buildRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: theme,
      routerConfig: router,
    );
  }
}
