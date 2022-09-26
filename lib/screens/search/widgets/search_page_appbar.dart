import 'package:flutter/material.dart';
import 'package:imdp_api_app/product/global/app_text.dart';
import 'package:imdp_api_app/product/global/app_text_style.dart';

class SearchPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchPageAppBar({super.key});

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
              AppText.searchPage,
              style: AppTextStyle.movieTitle.textStyle,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
