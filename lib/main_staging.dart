import 'package:fitness_tracker_application/application.dart';
import 'package:fitness_tracker_application/bootstrap.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RiveNative.init();
  await bootstrap(() => const Application());
}
