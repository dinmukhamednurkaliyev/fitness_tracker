import 'package:flutter/material.dart';

class _PrimitiveColor {
  const _PrimitiveColor();

  static const Color grey50 = Color(0xFFF2EEF9);
  //static const Color grey100 = Color(0xFFF0F0F0);
  static const Color grey200 = Color(0xFFF0EBF7);
  //static const Color grey300 = Color(0xFFE0E0E0);
  static const Color grey400 = Color(0xFFE8E2F3);
  //static const Color grey500 = Color(0xFFCCCCCC);
  static const Color grey600 = Color(0x4D999999);
  static const Color grey700 = Color(0xFF666666);
  static const Color grey800 = Color(0xFF1A1A1A);
  static const Color grey900 = Color(0xFF0F1115);

  static const Color opacity04 = Color(0x0A000000);
  static const Color opacity10 = Color(0x1A000000);
  static const Color opacity20 = Color(0x33000000);

  static const Color blue100 = Color(0xFFBBD2FF);
  static const Color yellow400 = Color(0xFFFFC85D);
  static const Color green100 = Color(0xFFCFF2D8);
  static const Color orange100 = Color(0xFFFFEED6);
  static const Color orange700 = Color(0xFFFF6B35);
  static const Color red400 = Color(0xFFFF6B6B);
  static const Color teal400 = Color(0xFF4ECDC4);
}

@immutable
class SemanticColor extends ThemeExtension<SemanticColor> {
  const SemanticColor({
    required this.iconGrey,
    required this.iconLightGrey,
    required this.borderGrey,
    required this.borderLight,
    required this.shadowDark,
    required this.shadowLight,
    required this.shadowMedium,
    required this.socialBlue,
    required this.socialPink,
    required this.socialRed,
    required this.difficultyEasy,
    required this.difficultyHard,
    required this.difficultyMedium,
    required this.bottomNavigationBackground,
    required this.metricBackgroundBlue,
    required this.metricBackgroundGreen,
    required this.metricBackgroundOrange,
    required this.pillGreen,
    required this.pillOrange,
    required this.cardBackgroundBlue,
    required this.cardBackgroundOrange,
    required this.cardBackgroundRed,
    required this.cardBackgroundTeal,
    required this.cardBackgroundYellow,
    required this.text,
    required this.textWhite,
    required this.textPrimary,
    required this.textSecondary,
    required this.backgroundPrimary,
    required this.backgroundBlack,
    required this.backgroundWhite,
  });

  static const regular = SemanticColor(
    text: _PrimitiveColor.grey900,
    textWhite: Colors.white,
    textPrimary: _PrimitiveColor.grey800,
    textSecondary: _PrimitiveColor.grey700,
    backgroundPrimary: _PrimitiveColor.grey50,
    backgroundBlack: Colors.black,
    backgroundWhite: Colors.white,
    cardBackgroundBlue: _PrimitiveColor.blue100,
    cardBackgroundOrange: _PrimitiveColor.orange700,
    cardBackgroundRed: _PrimitiveColor.red400,
    cardBackgroundTeal: _PrimitiveColor.teal400,
    cardBackgroundYellow: _PrimitiveColor.yellow400,
    pillGreen: _PrimitiveColor.green100,
    pillOrange: _PrimitiveColor.orange100,
    metricBackgroundGreen: _PrimitiveColor.green100,
    metricBackgroundBlue: _PrimitiveColor.blue100,
    metricBackgroundOrange: _PrimitiveColor.orange100,
    bottomNavigationBackground: Colors.black,
    difficultyEasy: Colors.green,
    difficultyMedium: Colors.orange,
    difficultyHard: Colors.red,
    socialBlue: Colors.blue,
    socialPink: Colors.pink,
    socialRed: Colors.red,
    shadowDark: _PrimitiveColor.opacity04,
    shadowLight: _PrimitiveColor.opacity10,
    shadowMedium: _PrimitiveColor.opacity20,
    borderGrey: _PrimitiveColor.grey400,
    borderLight: _PrimitiveColor.grey50,
    iconGrey: _PrimitiveColor.grey700,
    iconLightGrey: _PrimitiveColor.grey600,
  );

  final Color backgroundPrimary;
  final Color backgroundBlack;
  final Color backgroundWhite;
  final Color text;
  final Color textWhite;
  final Color textPrimary;
  final Color textSecondary;
  final Color cardBackgroundYellow;
  final Color cardBackgroundBlue;
  final Color cardBackgroundOrange;
  final Color cardBackgroundTeal;
  final Color cardBackgroundRed;
  final Color pillGreen;
  final Color pillOrange;
  final Color metricBackgroundGreen;
  final Color metricBackgroundBlue;
  final Color metricBackgroundOrange;
  final Color bottomNavigationBackground;
  final Color difficultyEasy;
  final Color difficultyMedium;
  final Color difficultyHard;
  final Color socialPink;
  final Color socialRed;
  final Color socialBlue;
  final Color shadowLight;
  final Color shadowMedium;
  final Color shadowDark;
  final Color borderLight;
  final Color borderGrey;
  final Color iconGrey;
  final Color iconLightGrey;

  @override
  ThemeExtension<SemanticColor> copyWith({
    Color? backgroundPrimary,
    Color? backgroundBlack,
    Color? backgroundWhite,
    Color? text,
    Color? textWhite,
    Color? textPrimary,
    Color? textSecondary,
    Color? cardPrimary,
    Color? cardSecondary,
    Color? cardYellow,
    Color? cardBlue,
    Color? cardOrange,
    Color? cardTeal,
    Color? cardRed,
    Color? pillGreen,
    Color? pillOrange,
    Color? metricBackgroundGreen,
    Color? metricBackgroundBlue,
    Color? metricBackgroundOrange,
    Color? bottomNavigationBackground,
    Color? difficultyEasy,
    Color? difficultyMedium,
    Color? difficultyHard,
    Color? socialPink,
    Color? socialRed,
    Color? socialBlue,
    Color? shadowLight,
    Color? shadowMedium,
    Color? shadowDark,
    Color? borderLight,
    Color? borderGrey,
    Color? iconGrey,
    Color? iconLightGrey,
  }) {
    return SemanticColor(
      backgroundPrimary: backgroundPrimary ?? this.backgroundPrimary,
      backgroundBlack: backgroundBlack ?? this.backgroundBlack,
      backgroundWhite: backgroundWhite ?? this.backgroundWhite,
      text: text ?? this.text,
      textWhite: textWhite ?? this.textWhite,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      cardBackgroundYellow: cardYellow ?? cardBackgroundYellow,
      cardBackgroundBlue: cardBlue ?? cardBackgroundBlue,
      cardBackgroundOrange: cardOrange ?? cardBackgroundOrange,
      cardBackgroundTeal: cardTeal ?? cardBackgroundTeal,
      cardBackgroundRed: cardRed ?? cardBackgroundRed,
      pillGreen: pillGreen ?? this.pillGreen,
      pillOrange: pillOrange ?? this.pillOrange,
      metricBackgroundGreen:
          metricBackgroundGreen ?? this.metricBackgroundGreen,
      metricBackgroundBlue: metricBackgroundBlue ?? this.metricBackgroundBlue,
      metricBackgroundOrange:
          metricBackgroundOrange ?? this.metricBackgroundOrange,
      bottomNavigationBackground:
          bottomNavigationBackground ?? this.bottomNavigationBackground,
      difficultyEasy: difficultyEasy ?? this.difficultyEasy,
      difficultyMedium: difficultyMedium ?? this.difficultyMedium,
      difficultyHard: difficultyHard ?? this.difficultyHard,
      socialBlue: socialBlue ?? this.socialBlue,
      socialPink: socialPink ?? this.socialPink,
      socialRed: socialRed ?? this.socialRed,
      shadowLight: shadowLight ?? this.shadowLight,
      shadowMedium: shadowMedium ?? this.shadowMedium,
      shadowDark: shadowDark ?? this.shadowDark,
      borderLight: borderLight ?? this.borderLight,
      borderGrey: borderGrey ?? this.borderGrey,
      iconGrey: iconGrey ?? this.iconGrey,
      iconLightGrey: iconLightGrey ?? this.iconLightGrey,
    );
  }

  @override
  ThemeExtension<SemanticColor> lerp(
    covariant ThemeExtension<SemanticColor>? other,
    double t,
  ) {
    if (other is! SemanticColor) return this;
    return SemanticColor(
      backgroundPrimary:
          Color.lerp(backgroundPrimary, other.backgroundPrimary, t) ??
          backgroundPrimary,
      backgroundBlack:
          Color.lerp(backgroundBlack, other.backgroundBlack, t) ??
          backgroundBlack,
      backgroundWhite:
          Color.lerp(backgroundWhite, other.backgroundWhite, t) ??
          backgroundWhite,
      text: Color.lerp(text, other.text, t) ?? text,
      textWhite: Color.lerp(textWhite, other.textWhite, t) ?? textWhite,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t) ?? textPrimary,
      textSecondary:
          Color.lerp(textSecondary, other.textSecondary, t) ?? textSecondary,
      cardBackgroundYellow:
          Color.lerp(cardBackgroundYellow, other.cardBackgroundYellow, t) ??
          cardBackgroundYellow,
      cardBackgroundBlue:
          Color.lerp(cardBackgroundBlue, other.cardBackgroundBlue, t) ??
          cardBackgroundBlue,
      cardBackgroundOrange:
          Color.lerp(cardBackgroundOrange, other.cardBackgroundOrange, t) ??
          cardBackgroundOrange,
      cardBackgroundTeal:
          Color.lerp(cardBackgroundTeal, other.cardBackgroundTeal, t) ??
          cardBackgroundTeal,
      cardBackgroundRed:
          Color.lerp(cardBackgroundRed, other.cardBackgroundRed, t) ??
          cardBackgroundRed,
      pillGreen: Color.lerp(pillGreen, other.pillGreen, t) ?? pillGreen,
      pillOrange: Color.lerp(pillOrange, other.pillOrange, t) ?? pillOrange,
      metricBackgroundGreen:
          Color.lerp(metricBackgroundGreen, other.metricBackgroundGreen, t) ??
          metricBackgroundGreen,
      metricBackgroundBlue:
          Color.lerp(metricBackgroundBlue, other.metricBackgroundBlue, t) ??
          metricBackgroundBlue,
      metricBackgroundOrange:
          Color.lerp(metricBackgroundOrange, other.metricBackgroundOrange, t) ??
          metricBackgroundOrange,
      bottomNavigationBackground:
          Color.lerp(
            bottomNavigationBackground,
            other.bottomNavigationBackground,
            t,
          ) ??
          bottomNavigationBackground,
      difficultyEasy:
          Color.lerp(difficultyEasy, other.difficultyEasy, t) ?? difficultyEasy,
      difficultyMedium:
          Color.lerp(difficultyMedium, other.difficultyMedium, t) ??
          difficultyMedium,
      difficultyHard:
          Color.lerp(difficultyHard, other.difficultyHard, t) ?? difficultyHard,
      socialBlue: Color.lerp(socialBlue, other.socialBlue, t) ?? socialBlue,
      socialPink: Color.lerp(socialPink, other.socialPink, t) ?? socialPink,
      socialRed: Color.lerp(socialRed, other.socialRed, t) ?? socialRed,
      shadowLight: Color.lerp(shadowLight, other.shadowLight, t) ?? shadowLight,
      shadowMedium:
          Color.lerp(shadowMedium, other.shadowMedium, t) ?? shadowMedium,
      shadowDark: Color.lerp(shadowDark, other.shadowDark, t) ?? shadowDark,
      borderLight: Color.lerp(borderLight, other.borderLight, t) ?? borderLight,
      borderGrey: Color.lerp(borderGrey, other.borderGrey, t) ?? borderGrey,
      iconGrey: Color.lerp(iconGrey, other.iconGrey, t) ?? iconGrey,
      iconLightGrey:
          Color.lerp(iconLightGrey, other.iconLightGrey, t) ?? iconLightGrey,
    );
  }
}

class SemanticGradient extends ThemeExtension<SemanticGradient> {
  const SemanticGradient({
    required this.challengeCard,
  });
  static const regular = SemanticGradient(
    challengeCard: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        _PrimitiveColor.grey400,
        _PrimitiveColor.grey200,
      ],
    ),
  );

  final Gradient challengeCard;

  @override
  ThemeExtension<SemanticGradient> copyWith({
    Gradient? challengeCard,
  }) {
    return SemanticGradient(
      challengeCard: challengeCard ?? this.challengeCard,
    );
  }

  @override
  ThemeExtension<SemanticGradient> lerp(
    covariant ThemeExtension<SemanticGradient>? other,
    double t,
  ) {
    if (other is! SemanticGradient) return this;
    return SemanticGradient(
      challengeCard:
          Gradient.lerp(challengeCard, other.challengeCard, t) ?? challengeCard,
    );
  }
}
