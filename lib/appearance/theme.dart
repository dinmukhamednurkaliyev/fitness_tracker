import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:flutter/material.dart';

ThemeData buildTheme() {
  final base = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: SemanticColor.regular().cardPrimary,
    textTheme: const TextTheme(),
    extensions: <ThemeExtension<dynamic>>[
      SemanticSpacing.regular(),
      SemanticPadding.regular(),
      SemanticColor.regular(),
      SemanticRadius.regular(),
    ],
  );

  return base.copyWith(
    scaffoldBackgroundColor: SemanticColor.regular().backgroundPrimary,
    textTheme: base.textTheme.apply(
      bodyColor: SemanticColor.regular().textPrimary,
      displayColor: SemanticColor.regular().textPrimary,
    ),
    cardTheme: CardThemeData(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(SemanticRadius.regular().md)),
      ),
    ),
  );
}

extension ThemeContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  SemanticSpacing get spacing => theme.extension<SemanticSpacing>()!;
  SemanticPadding get padding => theme.extension<SemanticPadding>()!;
  SemanticColor get color => theme.extension<SemanticColor>()!;
  SemanticRadius get radius => theme.extension<SemanticRadius>()!;
}
