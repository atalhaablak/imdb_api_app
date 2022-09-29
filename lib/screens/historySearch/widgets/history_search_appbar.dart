import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../product/global/app_text.dart';
import '../../../product/global/app_text_style.dart';
import '../../search/search_view.dart';

class HistorySearchPageAppBar extends StatelessWidget {
  const HistorySearchPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchPageView(),
                  ));
            },
            icon: const Icon(Icons.chevron_left_outlined)),
        const SizedBox(width: 50),
        Text(
          AppText.historyPage,
          style: AppTextStyle.movieTitle.textStyle,
        ),
      ],
    );
  }
}
