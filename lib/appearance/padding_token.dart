import 'dart:ui';

import 'package:flutter/material.dart';

class _PrimitivePadding {
  const _PrimitivePadding();

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
class SemanticPadding extends ThemeExtension<SemanticPadding> {
  const SemanticPadding({
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
  factory SemanticPadding.regular() {
    return const SemanticPadding(
      none: _PrimitivePadding.s0,
      xxxs: _PrimitivePadding.s4,
      xxs: _PrimitivePadding.s8,
      xs: _PrimitivePadding.s12,
      sm: _PrimitivePadding.s16,
      md: _PrimitivePadding.s20,
      lg: _PrimitivePadding.s24,
      xl: _PrimitivePadding.s28,
      xxl: _PrimitivePadding.s32,
      xxxl: _PrimitivePadding.s36,
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
  ThemeExtension<SemanticPadding> copyWith({
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
    return SemanticPadding(
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
  ThemeExtension<SemanticPadding> lerp(
    covariant ThemeExtension<SemanticPadding>? other,
    double t,
  ) {
    if (other is! SemanticPadding) return this;
    return SemanticPadding(
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
