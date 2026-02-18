import 'package:appearance/appearance.dart';
import 'package:fitness_tracker/application.dart';
import 'package:fitness_tracker/bootstrap.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RiveNative.init();
  await bootstrap(() => const Application());
}
