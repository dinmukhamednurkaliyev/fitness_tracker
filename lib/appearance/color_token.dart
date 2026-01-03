import 'package:flutter/material.dart';

class _PrimitiveColor {
  const _PrimitiveColor();

  static const Color grey50 = Color(0xFFF2EEF9);
  static const Color grey900 = Color(0xFF0F1115);
  static const Color blue100 = Color(0xFFBBD2FF);
  static const Color yellow400 = Color(0xFFFFC85D);
  static const Color green50 = Color(0xFFE7F8ED);
  static const Color orange100 = Color(0xFFFFEED6);
  static const Color grey400 = Color(0xFFCCCCCC);
  static const Color red400 = Color(0xFFFF6B6B);
  static const Color teal400 = Color(0xFF4ECDC4);
  static const Color orange700 = Color(0xFFFF6B35);
}

@immutable
class SemanticColor extends ThemeExtension<SemanticColor> {
  const SemanticColor({
    required this.cardPrimary,
    required this.cardSecondary,
    required this.pillPrimary,
    required this.pillSecondary,
    required this.textPrimary,
    required this.textSecondary,
    required this.backgroundPrimary,
    required this.backgroundSecondary,
  });

  factory SemanticColor.regular() {
    return const SemanticColor(
      cardPrimary: _PrimitiveColor.blue100,
      cardSecondary: _PrimitiveColor.yellow400,
      pillPrimary: _PrimitiveColor.green50,
      pillSecondary: _PrimitiveColor.orange100,
      textPrimary: _PrimitiveColor.grey900,
      textSecondary: _PrimitiveColor.grey900,
      backgroundPrimary: _PrimitiveColor.grey50,
      backgroundSecondary: _PrimitiveColor.grey900,
    );
  }

  final Color backgroundPrimary;
  final Color backgroundSecondary;

  final Color textPrimary;
  final Color textSecondary;

  final Color cardPrimary;
  final Color cardSecondary;

  final Color pillPrimary;
  final Color pillSecondary;

  @override
  ThemeExtension<SemanticColor> copyWith({
    Color? backgroundPrimary,
    Color? backgroundSecondary,
    Color? textPrimary,
    Color? textSecondary,
    Color? cardPrimary,
    Color? cardSecondary,
    Color? pillPrimary,
    Color? pillSecondary,
  }) {
    return SemanticColor(
      backgroundPrimary: backgroundPrimary ?? this.backgroundPrimary,
      backgroundSecondary: backgroundSecondary ?? this.backgroundSecondary,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      cardPrimary: cardPrimary ?? this.cardPrimary,
      cardSecondary: cardSecondary ?? this.cardSecondary,
      pillPrimary: pillPrimary ?? this.pillPrimary,
      pillSecondary: pillSecondary ?? this.pillSecondary,
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
      cardPrimary: Color.lerp(cardPrimary, other.cardPrimary, t) ?? cardPrimary,
      cardSecondary: Color.lerp(cardSecondary, other.cardSecondary, t) ?? cardSecondary,
      pillPrimary: Color.lerp(pillPrimary, other.pillPrimary, t) ?? pillPrimary,
      pillSecondary: Color.lerp(pillSecondary, other.pillSecondary, t) ?? pillSecondary,
    );
  }
}
