import 'package:flutter/material.dart';
import 'package:imdp_api_app/screens/search/search_view.dart';
import '../../../product/global/app_text.dart';
import '../../../product/global/app_text_style.dart';

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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchPageView(),
                  ));
            },
            icon: const Icon(Icons.search_outlined)),
      ],
    );
  }
}
