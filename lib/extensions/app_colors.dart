import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.black,
    required this.white,
    required this.gray,
  });

  final Color black;
  final Color white;
  final Color gray;

  @override
  AppColors copyWith({
    Color? black,
    Color? white,
    Color? gray,
  }) {
    return AppColors(
      black: this.black,
      white: this.white,
      gray: this.gray,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      black: Color.lerp(black, other.black, t) ?? black,
      white: Color.lerp(white, other.white, t) ?? white,
      gray: Color.lerp(gray, other.gray, t) ?? gray,
    );
  }

  // Optional
  @override
  String toString() => 'MyColors';
}
