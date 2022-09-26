import 'package:flutter/material.dart';
import 'package:imdp_api_app/product/extension/string_extension.dart';
import 'package:imdp_api_app/product/global/app_text_style.dart';
import 'package:imdp_api_app/screens/userInfo/user_info_view_model.dart';
import 'package:imdp_api_app/screens/userInfo/user_model.dart';
import 'package:imdp_api_app/screens/userInfo/widgets/build_info_list.dart';
import 'package:imdp_api_app/screens/userInfo/widgets/order_status_card.dart';
import 'package:imdp_api_app/screens/userInfo/widgets/user_card.dart';
import 'package:provider/provider.dart';
import '../../controller/injection.dart';
import 'widgets/app_bar.dart';

class UserInfoView extends StatefulWidget {
  const UserInfoView({super.key});

  @override
  State<UserInfoView> createState() => _UserInfoViewState();
}

class _UserInfoViewState extends State<UserInfoView> {
  final user = User(name: "John", surname: "Dorethy");
  final String cardAvatarColor = "#F5F5F5";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UserInfoViewModel>(
        create: (context) => serviceLocator<UserInfoViewModel>(),
        builder: ((context, child) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const UserInfoAppBar(),
                    UserCard(user: user),
                    SizedBox(height: MediaQuery.of(context).size.width * 1, child: BuildInfoList()),
                    Container(
                      height: 300,
                      color: Color(cardAvatarColor.colorValue),
                      child: _createActiveMyOrder(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Hesabımı Kapat",
                          style: AppTextStyle.subTitle.textStyle
                              ?.copyWith(color: Colors.black, decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }));
  }

  Column _createActiveMyOrder() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 24, top: 20),
            child: Text("Aktif Siparişlerim", style: AppTextStyle.movieTitle.textStyle)),
        const Expanded(
          child: OrderStatusCard(),
        )
      ],
    );
  }
}
