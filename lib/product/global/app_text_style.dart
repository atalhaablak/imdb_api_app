import 'package:flutter/material.dart';

enum AppTextStyle {
  movieTitle,
  subTitle,
  description,
  infoText,
}

extension AppTextStyleExtension on AppTextStyle {
  TextStyle? get textStyle {
    switch (this) {
      case AppTextStyle.movieTitle:
        return const TextStyle(
          fontSize: 20,
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
      case AppTextStyle.infoText:
        return const TextStyle(
          fontSize: 16,
        );
        break;
    }
  }
}
