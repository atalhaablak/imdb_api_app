import 'package:flutter/material.dart';

enum AppTextStyle { movieTitle, subTitle, description }

extension AppTextStyleExtension on AppTextStyle {
  TextStyle? get textStyle {
    switch (this) {
      case AppTextStyle.movieTitle:
        return const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.fade,
        );
      case AppTextStyle.subTitle:
        return const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        );
      case AppTextStyle.description:
        return const TextStyle(
          fontSize: 14,
        );
    }
  }
}
