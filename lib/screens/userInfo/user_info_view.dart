import 'package:flutter/material.dart';
import 'package:imdp_api_app/screens/userInfo/user_info_view_model.dart';
import 'package:imdp_api_app/screens/userInfo/user_model.dart';
import 'package:imdp_api_app/screens/userInfo/widgets/user_card.dart';
import 'widgets/app_bar.dart';

class UserInfoView extends StatefulWidget {
  const UserInfoView({super.key});

  @override
  State<UserInfoView> createState() => _UserInfoViewState();
}

class _UserInfoViewState extends State<UserInfoView> {
  final userInfoList = UserInfoViewModel().userInfoList;
  final user = User(name: "John", surname: "Dorethy");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const UserInfoAppBar(),
            UserCard(user: user),
            Expanded(
              child: ListView.builder(
                itemCount: userInfoList.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Text(userInfoList[index].toString()),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
