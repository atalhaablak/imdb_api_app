import 'package:flutter/material.dart';
import 'package:imdp_api_app/product/global/app_text.dart';
import 'package:imdp_api_app/product/global/app_text_style.dart';

import '../../home/home_page_view.dart';

class UserInfoAppBar extends StatelessWidget {
  const UserInfoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppText.myAccount,
              style: AppTextStyle.movieTitle.textStyle,
            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePageView()));
                },
                icon: const Icon(Icons.close)),
          ],
        ),
      ),
    );
  }
}