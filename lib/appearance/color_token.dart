import 'package:flutter/material.dart';

class _PrimitiveColor {
  const _PrimitiveColor();

  static const Color grey50 = Color(0xFFF2EEF9);

  static const Color grey100 = Color(0xFFF0EBF7);

  static const Color grey200 = Color(0xFFE8E2F3);

  static const Color grey400 = Color(0xFFCCCCCC);

  static const Color grey600 = Color(0xFF666666);

  static const Color grey800 = Color(0xFF1A1A1A);

  static const Color grey900 = Color(0xFF0F1115);

  static const Color blue100 = Color(0xFFBBD2FF);

  static const Color yellow400 = Color(0xFFFFC85D);

  static const Color green50 = Color(0xFFE7F8ED);

  static const Color orange100 = Color(0xFFFFEED6);

  static const Color red400 = Color(0xFFFF6B6B);

  static const Color teal400 = Color(0xFF4ECDC4);

  static const Color orange700 = Color(0xFFFF6B35);
}

@immutable
class SemanticColor extends ThemeExtension<SemanticColor> {
  const SemanticColor({
    required this.surfaceBlue,
    required this.surfaceOrange,
    required this.surfaceRed,
    required this.surfaceTeal,
    required this.surfaceYellow,
    required this.textPrimary,
    required this.textSecondary,
    required this.backgroundPrimary,
    required this.backgroundSecondary,
  });

  factory SemanticColor.regular() {
    return const SemanticColor(
      textPrimary: _PrimitiveColor.grey900,
      textSecondary: _PrimitiveColor.grey900,
      backgroundPrimary: _PrimitiveColor.grey50,
      backgroundSecondary: _PrimitiveColor.grey900,
      surfaceBlue: _PrimitiveColor.blue100,
      surfaceOrange: _PrimitiveColor.orange700,
      surfaceRed: _PrimitiveColor.red400,
      surfaceTeal: _PrimitiveColor.teal400,
      surfaceYellow: _PrimitiveColor.yellow400,
    );
  }

  final Color backgroundPrimary;
  final Color backgroundSecondary;

  final Color textPrimary;
  final Color textSecondary;

  final Color surfaceYellow;
  final Color surfaceBlue;
  final Color surfaceOrange;
  final Color surfaceTeal;
  final Color surfaceRed;

  @override
  ThemeExtension<SemanticColor> copyWith({
    Color? backgroundPrimary,
    Color? backgroundSecondary,
    Color? textPrimary,
    Color? textSecondary,
    Color? cardPrimary,
    Color? cardSecondary,
    Color? surfaceYellow,
    Color? surfaceBlue,
    Color? surfaceOrange,
    Color? surfaceTeal,
    Color? surfaceRed,
  }) {
    return SemanticColor(
      backgroundPrimary: backgroundPrimary ?? this.backgroundPrimary,
      backgroundSecondary: backgroundSecondary ?? this.backgroundSecondary,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      surfaceYellow: surfaceYellow ?? this.surfaceYellow,
      surfaceBlue: surfaceBlue ?? this.surfaceBlue,
      surfaceOrange: surfaceOrange ?? this.surfaceOrange,
      surfaceTeal: surfaceTeal ?? this.surfaceTeal,
      surfaceRed: surfaceRed ?? this.surfaceRed,
    );
  }

  @override
  ThemeExtension<SemanticColor> lerp(covariant ThemeExtension<SemanticColor>? other, double t) {
    if (other is! SemanticColor) return this;
    return SemanticColor(
      backgroundPrimary:
          Color.lerp(backgroundPrimary, other.backgroundPrimary, t) ?? backgroundPrimary,
      backgroundSecondary:
          Color.lerp(backgroundSecondary, other.backgroundSecondary, t) ?? backgroundSecondary,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t) ?? textPrimary,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t) ?? textSecondary,
      surfaceYellow: Color.lerp(surfaceYellow, other.surfaceYellow, t) ?? surfaceYellow,
      surfaceBlue: Color.lerp(surfaceBlue, other.surfaceBlue, t) ?? surfaceBlue,
      surfaceOrange: Color.lerp(surfaceOrange, other.surfaceOrange, t) ?? surfaceOrange,
      surfaceTeal: Color.lerp(surfaceTeal, other.surfaceTeal, t) ?? surfaceTeal,
      surfaceRed: Color.lerp(surfaceRed, other.surfaceRed, t) ?? surfaceRed,
    );
  }
}

class SemanticGradient extends ThemeExtension<SemanticGradient> {
  const SemanticGradient();
  factory SemanticGradient.regular() {
    return const SemanticGradient();
  }

  @override
  ThemeExtension<SemanticGradient> copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<SemanticGradient> lerp(
    covariant ThemeExtension<SemanticGradient>? other,
    double t,
  ) {
    throw UnimplementedError();
  }
}
