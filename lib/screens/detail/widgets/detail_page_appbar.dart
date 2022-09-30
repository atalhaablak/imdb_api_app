import 'package:flutter/material.dart';
import 'package:imdp_api_app/product/global/app_text_style.dart';
import 'package:imdp_api_app/screens/detail/detail_page_view_model.dart';
import 'package:imdp_api_app/screens/home/home_page_view.dart';
import 'package:provider/provider.dart';

class DetailPageAppBar extends StatelessWidget {
  const DetailPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<DetailPageViewModel, dynamic>(
      builder: (context, value, child) {
        return Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePageView()));
                },
                icon: const Icon(Icons.chevron_left_outlined)),
            Text("Movie Detail", style: AppTextStyle.movieTitle.textStyle),
          ],
        );
      },
      selector: (context, provider) {
        return provider;
      },
    );
  }
}
