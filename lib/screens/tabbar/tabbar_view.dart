import 'package:flutter/material.dart';
import 'package:imdp_api_app/screens/tabbar/tabbar_view_model.dart';
import 'package:provider/provider.dart';

import '../../controller/injection.dart';

class TabbarView extends StatefulWidget {
  const TabbarView({Key? key}) : super(key: key);

  @override
  State<TabbarView> createState() => _TabbarViewState();
}

class _TabbarViewState extends State<TabbarView> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TabbarViewModel>(
      create: (context) => serviceLocator<TabbarViewModel>(),
      builder: ((context, child) {
        return DefaultTabController(
          length: context.read<TabbarViewModel>().tabList.length,
          initialIndex: 1,
          child: Scaffold(
            bottomNavigationBar: TabBar(
              tabs: context.read<TabbarViewModel>().tabList,
            ),
            body: TabBarView(
              children: context.read<TabbarViewModel>().tabViewList,
            ),
          ),
        );
      }),
    );
  }
}
