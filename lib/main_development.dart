import 'package:fitness_tracker_application/application/application.dart';
import 'package:fitness_tracker_application/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const Application());
}
