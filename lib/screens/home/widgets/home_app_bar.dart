import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../product/global/app_text.dart';
import '../../../product/global/app_text_style.dart';
import '../../../product/global/theme_notifier.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppText.homePage,
          style: AppTextStyle.movieTitle.textStyle,
        ),
        IconButton(
            onPressed: () {
              context.read<ThemeNotifier>().changeTheme();
            },
            icon: const Icon(Icons.dark_mode_rounded)),
      ],
    );
  }
}
