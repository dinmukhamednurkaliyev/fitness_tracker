import 'dart:io';

import 'package:alchemist/alchemist.dart';

Future<void> testExecutable(Future<void> Function() testMain) async {
  return AlchemistConfig.runWithConfig(
    config: AlchemistConfig(
      platformGoldensConfig: PlatformGoldensConfig(enabled: Platform.isAndroid),
    ),
    run: testMain,
  );
}
