import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:flutter/material.dart';

ThemeData buildTheme() {
  final base = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: SemanticColor.regular.cardBackgroundBlue,
    textTheme: const TextTheme(),
    extensions: const <ThemeExtension<dynamic>>[
      SemanticText.regular,
      SemanticColor.regular,
      SemanticGradient.regular,
      SemanticSpacing.regular,
      SemanticRadius.regular,
    ],
  );

  return base.copyWith(
    scaffoldBackgroundColor: SemanticColor.regular.backgroundPrimary,
    textTheme: base.textTheme.apply(
      bodyColor: SemanticColor.regular.textPrimary,
      displayColor: SemanticColor.regular.textPrimary,
    ),
    cardTheme: CardThemeData(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(SemanticRadius.regular.md),
        ),
      ),
    ),
  );
}

extension ThemeContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  SemanticColor get color => theme.extension<SemanticColor>()!;
  SemanticText get text => theme.extension<SemanticText>()!;
  SemanticSpacing get spacing => theme.extension<SemanticSpacing>()!;
  SemanticRadius get radius => theme.extension<SemanticRadius>()!;
  SemanticGradient get gradient => theme.extension<SemanticGradient>()!;
}
