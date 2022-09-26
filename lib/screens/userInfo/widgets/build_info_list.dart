import 'package:flutter/material.dart';

import '../../../product/global/app_text_style.dart';
import '../user_info_view_model.dart';

class BuildInfoList extends StatelessWidget {
  BuildInfoList({super.key});

  final infoList = UserInfoViewModel().userInfoItems;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: infoList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(infoList[index].toString(), style: AppTextStyle.infoText.textStyle),
              IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_right_outlined)),
            ],
          ),
        );
      },
    );
  }
}
