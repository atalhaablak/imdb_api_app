import 'package:flutter/material.dart';

import '../home/home_page_view.dart';
// import '../userInfo/user_info_view.dart';

class TabbarViewModel extends ChangeNotifier {
  List<Widget> tabList = const [
    // Tab(icon: Icon(Icons.person, color: Colors.black)),
    Tab(icon: Icon(Icons.home_outlined, color: Colors.black)),
  ];

  List<Widget> tabViewList = [
    // const UserInfoView(),
    const HomePageView(),
  ];
}
