import 'package:flutter/material.dart';
import 'package:imdp_api_app/product/extension/string_extension.dart';
import 'package:imdp_api_app/screens/userInfo/user_model.dart';

import '../../../product/global/app_text.dart';
import '../../../product/global/app_text_style.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key, required this.user});
  final User user;

  final String cirlceAvatarColor = "#2A63FF";
  final String cardAvatarColor = "#F5F5F5";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(cardAvatarColor.colorValue),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20.7, bottom: 18.6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Color(cirlceAvatarColor.colorValue),
                  child: Text(user.shortName),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppText.welcome, style: AppTextStyle.description.textStyle),
                      Text(user.fullName, style: AppTextStyle.subTitle.textStyle),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 27),
              child: IconButton(onPressed: () {}, icon: const Icon(Icons.logout_outlined)),
            ),
          ],
        ),
      ),
    );
  }
}
