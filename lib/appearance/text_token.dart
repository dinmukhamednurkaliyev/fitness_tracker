import 'package:flutter/material.dart';

class _TextPrimitive {
  const _TextPrimitive._();

  static const fontFamily = 'Inter';
  static const TextLeadingDistribution leading =
      TextLeadingDistribution.proportional;

  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  //static const FontWeight bold = FontWeight.w700;

  static const double s11 = 11;
  static const double s12 = 12;
  static const double s14 = 14;
  static const double s16 = 16;
  static const double s22 = 22;
  static const double s24 = 24;
  static const double s28 = 28;
  static const double s32 = 32;
  static const double s36 = 36;
  static const double s45 = 45;
  static const double s57 = 57;
}

@immutable
class SemanticText extends ThemeExtension<SemanticText> {
  const SemanticText({
    required this.displayLarge,
    required this.displayMedium,
    required this.displaySmall,
    required this.headlineLarge,
    required this.headlineMedium,
    required this.headlineSmall,
    required this.titleLarge,
    required this.titleMedium,
    required this.titleSmall,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.bodySmall,
    required this.labelLarge,
    required this.labelMedium,
    required this.labelSmall,
  });

  final TextStyle displayLarge;
  final TextStyle displayMedium;
  final TextStyle displaySmall;
  final TextStyle headlineLarge;
  final TextStyle headlineMedium;
  final TextStyle headlineSmall;
  final TextStyle titleLarge;
  final TextStyle titleMedium;
  final TextStyle titleSmall;
  final TextStyle bodyLarge;
  final TextStyle bodyMedium;
  final TextStyle bodySmall;
  final TextStyle labelLarge;
  final TextStyle labelMedium;
  final TextStyle labelSmall;

  static const regular = SemanticText(
    displayLarge: TextStyle(
      fontFamily: _TextPrimitive.fontFamily,
      leadingDistribution: _TextPrimitive.leading,
      fontSize: _TextPrimitive.s57,
      fontWeight: _TextPrimitive.regular,
      height: 1.12,
      letterSpacing: -0.25,
    ),
    displayMedium: TextStyle(
      fontFamily: _TextPrimitive.fontFamily,
      leadingDistribution: _TextPrimitive.leading,
      fontSize: _TextPrimitive.s45,
      fontWeight: _TextPrimitive.regular,
      height: 1.15,
    ),
    displaySmall: TextStyle(
      fontFamily: _TextPrimitive.fontFamily,
      leadingDistribution: _TextPrimitive.leading,
      fontSize: _TextPrimitive.s36,
      fontWeight: _TextPrimitive.regular,
      height: 1.22,
    ),

    headlineLarge: TextStyle(
      fontFamily: _TextPrimitive.fontFamily,
      leadingDistribution: _TextPrimitive.leading,
      fontSize: _TextPrimitive.s32,
      fontWeight: _TextPrimitive.semiBold,
      height: 1.25,
    ),
    headlineMedium: TextStyle(
      fontFamily: _TextPrimitive.fontFamily,
      leadingDistribution: _TextPrimitive.leading,
      fontSize: _TextPrimitive.s28,
      fontWeight: _TextPrimitive.semiBold,
      height: 1.28,
    ),
    headlineSmall: TextStyle(
      fontFamily: _TextPrimitive.fontFamily,
      leadingDistribution: _TextPrimitive.leading,
      fontSize: _TextPrimitive.s24,
      fontWeight: _TextPrimitive.semiBold,
      height: 1.33,
    ),

    titleLarge: TextStyle(
      fontFamily: _TextPrimitive.fontFamily,
      leadingDistribution: _TextPrimitive.leading,
      fontSize: _TextPrimitive.s22,
      fontWeight: _TextPrimitive.semiBold,
      height: 1.27,
    ),
    titleMedium: TextStyle(
      fontFamily: _TextPrimitive.fontFamily,
      leadingDistribution: _TextPrimitive.leading,
      fontSize: _TextPrimitive.s16,
      fontWeight: _TextPrimitive.semiBold,
      height: 1.5,
      letterSpacing: 0.15,
    ),
    titleSmall: TextStyle(
      fontFamily: _TextPrimitive.fontFamily,
      leadingDistribution: _TextPrimitive.leading,
      fontSize: _TextPrimitive.s14,
      fontWeight: _TextPrimitive.medium,
      height: 1.43,
      letterSpacing: 0.1,
    ),

    bodyLarge: TextStyle(
      fontFamily: _TextPrimitive.fontFamily,
      leadingDistribution: _TextPrimitive.leading,
      fontSize: _TextPrimitive.s16,
      fontWeight: _TextPrimitive.medium,
      height: 1.5,
      letterSpacing: 0.5,
    ),
    bodyMedium: TextStyle(
      fontFamily: _TextPrimitive.fontFamily,
      leadingDistribution: _TextPrimitive.leading,
      fontSize: _TextPrimitive.s14,
      fontWeight: _TextPrimitive.medium,
      height: 1.43,
      letterSpacing: 0.25,
    ),
    bodySmall: TextStyle(
      fontFamily: _TextPrimitive.fontFamily,
      leadingDistribution: _TextPrimitive.leading,
      fontSize: _TextPrimitive.s12,
      fontWeight: _TextPrimitive.medium,
      height: 1.33,
      letterSpacing: 0.4,
    ),

    labelLarge: TextStyle(
      fontFamily: _TextPrimitive.fontFamily,
      leadingDistribution: _TextPrimitive.leading,
      fontSize: _TextPrimitive.s14,
      fontWeight: _TextPrimitive.semiBold,
      height: 1.43,
      letterSpacing: 0.1,
    ),
    labelMedium: TextStyle(
      fontFamily: _TextPrimitive.fontFamily,
      leadingDistribution: _TextPrimitive.leading,
      fontSize: _TextPrimitive.s12,
      fontWeight: _TextPrimitive.semiBold,
      height: 1.33,
      letterSpacing: 0.5,
    ),
    labelSmall: TextStyle(
      fontFamily: _TextPrimitive.fontFamily,
      leadingDistribution: _TextPrimitive.leading,
      fontSize: _TextPrimitive.s11,
      fontWeight: _TextPrimitive.semiBold,
      height: 1.45,
      letterSpacing: 0.5,
    ),
  );

  @override
  ThemeExtension<SemanticText> copyWith({
    TextStyle? displayLarge,
    TextStyle? displayMedium,
    TextStyle? displaySmall,
    TextStyle? headlineLarge,
    TextStyle? headlineMedium,
    TextStyle? headlineSmall,
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? titleSmall,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? labelLarge,
    TextStyle? labelMedium,
    TextStyle? labelSmall,
  }) {
    return SemanticText(
      displayLarge: displayLarge ?? this.displayLarge,
      displayMedium: displayMedium ?? this.displayMedium,
      displaySmall: displaySmall ?? this.displaySmall,
      headlineLarge: headlineLarge ?? this.headlineLarge,
      headlineMedium: headlineMedium ?? this.headlineMedium,
      headlineSmall: headlineSmall ?? this.headlineSmall,
      titleLarge: titleLarge ?? this.titleLarge,
      titleMedium: titleMedium ?? this.titleMedium,
      titleSmall: titleSmall ?? this.titleSmall,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodySmall: bodySmall ?? this.bodySmall,
      labelLarge: labelLarge ?? this.labelLarge,
      labelMedium: labelMedium ?? this.labelMedium,
      labelSmall: labelSmall ?? this.labelSmall,
    );
  }

  @override
  ThemeExtension<SemanticText> lerp(
    covariant ThemeExtension<SemanticText>? other,
    double t,
  ) {
    if (other is! SemanticText) return this;
    return SemanticText(
      displayLarge: TextStyle.lerp(displayLarge, other.displayLarge, t)!,
      displayMedium: TextStyle.lerp(displayMedium, other.displayMedium, t)!,
      displaySmall: TextStyle.lerp(displaySmall, other.displaySmall, t)!,
      headlineLarge: TextStyle.lerp(headlineLarge, other.headlineLarge, t)!,
      headlineMedium: TextStyle.lerp(headlineMedium, other.headlineMedium, t)!,
      headlineSmall: TextStyle.lerp(headlineSmall, other.headlineSmall, t)!,
      titleLarge: TextStyle.lerp(titleLarge, other.titleLarge, t)!,
      titleMedium: TextStyle.lerp(titleMedium, other.titleMedium, t)!,
      titleSmall: TextStyle.lerp(titleSmall, other.titleSmall, t)!,
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t)!,
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
      labelLarge: TextStyle.lerp(labelLarge, other.labelLarge, t)!,
      labelMedium: TextStyle.lerp(labelMedium, other.labelMedium, t)!,
      labelSmall: TextStyle.lerp(labelSmall, other.labelSmall, t)!,
    );
  }
}

extension TextExtension on TextStyle {
  TextStyle withColor(Color color) => copyWith(color: color);
  TextStyle withHeight(double height) => copyWith(height: height);
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);
}
