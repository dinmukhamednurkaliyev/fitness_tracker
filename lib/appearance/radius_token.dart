import 'dart:ui';

import 'package:flutter/material.dart';

class _PrimitiveRadius {
  const _PrimitiveRadius();

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
class SemanticRadius extends ThemeExtension<SemanticRadius> {
  const SemanticRadius({
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

  factory SemanticRadius.regular() {
    return const SemanticRadius(
      none: _PrimitiveRadius.s0,
      xxxs: _PrimitiveRadius.s4,
      xxs: _PrimitiveRadius.s8,
      xs: _PrimitiveRadius.s12,
      sm: _PrimitiveRadius.s16,
      md: _PrimitiveRadius.s20,
      lg: _PrimitiveRadius.s24,
      xl: _PrimitiveRadius.s28,
      xxl: _PrimitiveRadius.s32,
      xxxl: _PrimitiveRadius.s36,
    );
  }
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
  ThemeExtension<SemanticRadius> copyWith({
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
    return SemanticRadius(
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
  ThemeExtension<SemanticRadius> lerp(
    covariant ThemeExtension<SemanticRadius>? other,
    double t,
  ) {
    if (other is! SemanticRadius) return this;
    return SemanticRadius(
      none: lerpDouble(none, other.none, t) ?? none,
      xxxs: lerpDouble(xxxs, other.xxxs, t) ?? xxxs,
      xxs: lerpDouble(xxs, other.xxs, t) ?? xxs,
      xs: lerpDouble(xs, other.xs, t) ?? xs,
      sm: lerpDouble(sm, other.sm, t) ?? sm,
      md: lerpDouble(md, other.md, t) ?? md,
      lg: lerpDouble(lg, other.lg, t) ?? lg,
      xl: lerpDouble(xl, other.xl, t) ?? xl,
      xxl: lerpDouble(xxl, other.xxl, t) ?? xxl,
      xxxl: lerpDouble(xxxl, other.xxxl, t) ?? xxxl,
    );
  }
}
