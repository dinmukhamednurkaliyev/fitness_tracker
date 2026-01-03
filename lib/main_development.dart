import 'package:fitness_tracker_application/application.dart';
import 'package:fitness_tracker_application/bootstrap.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await bootstrap(() => const Application());
}
