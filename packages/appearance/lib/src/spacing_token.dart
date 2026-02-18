import 'package:flutter/material.dart';

class _PrimitiveSpacing {
  const _PrimitiveSpacing();

  static const double s0 = 0;
  static const double s4 = 4;
  static const double s8 = 8;
  static const double s12 = 12;
  static const double s16 = 16;
  static const double s20 = 20;
  static const double s24 = 24;
  static const double s28 = 28;
  static const double s32 = 32;
  static const double s36 = 36;
}

@immutable
class SemanticSpacing extends ThemeExtension<SemanticSpacing> {
  const SemanticSpacing({
    required this.none,
    required this.xxxs,
    required this.xxs,
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
    required this.xxl,
    required this.xxxl,
  });

  static const regular = SemanticSpacing(
    none: _PrimitiveSpacing.s0,
    xxxs: _PrimitiveSpacing.s4,
    xxs: _PrimitiveSpacing.s8,
    xs: _PrimitiveSpacing.s12,
    sm: _PrimitiveSpacing.s16,
    md: _PrimitiveSpacing.s20,
    lg: _PrimitiveSpacing.s24,
    xl: _PrimitiveSpacing.s28,
    xxl: _PrimitiveSpacing.s32,
    xxxl: _PrimitiveSpacing.s36,
  );

  final double none;

  final double xxxs;

  final double xxs;

  final double xs;

  final double sm;

  final double md;

  final double lg;

  final double xl;

  final double xxl;

  final double xxxl;

  @override
  ThemeExtension<SemanticSpacing> copyWith({
    double? none,
    double? xxxs,
    double? xxs,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
    double? xxxl,
  }) {
    return SemanticSpacing(
      none: none ?? this.none,
      xxxs: xxxs ?? this.xxxs,
      xxs: xxs ?? this.xxs,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
      xxxl: xxxl ?? this.xxxl,
    );
  }

  @override
  ThemeExtension<SemanticSpacing> lerp(
    covariant ThemeExtension<SemanticSpacing>? other,
    double t,
  ) {
    if (other is! SemanticSpacing) return this;
    return this;
  }
}
