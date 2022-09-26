import 'package:flutter/material.dart';
import 'package:imdp_api_app/controller/injection.dart';
import 'package:imdp_api_app/product/global/app_text.dart';
import 'package:imdp_api_app/product/global/app_text_style.dart';
import 'package:imdp_api_app/product/service/project_dio.dart';
import 'package:imdp_api_app/screens/home/home_page_view_model.dart';
import 'package:imdp_api_app/screens/home/widgets/home_app_bar.dart';
import 'package:imdp_api_app/screens/home/widgets/lsw_movie.dart';
import 'package:imdp_api_app/screens/home/widgets/templace_holder.dart';
import 'package:imdp_api_app/screens/userInfo/user_info_view.dart';
import 'package:provider/provider.dart';
import '../../models/nameModel/by_name_model.dart';
import '../../product/global/theme_notifier.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> with ProjectDioMixin, AutomaticKeepAliveClientMixin {
  @override
  bool wantKeepAlive = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomePageViewModel>(
      create: (context) => serviceLocator<HomePageViewModel>(),
      builder: ((context, child) {
        return Scaffold(
            body: context.read<HomePageViewModel>().isError
                ? Center(
                    child: Text(
                      context.read<HomePageViewModel>().errorMessage,
                    ),
                  )
                : SafeArea(
                    child: Column(
                      children: [
                        const Padding(padding: EdgeInsets.symmetric(horizontal: 8.0), child: HomePageAppBar()),
                        const TempPlaceHolder(),
                        Expanded(child: _nameListView(context, context.watch<HomePageViewModel>().data)),
                      ],
                    ),
                  ));
      }),
    );
  }

  Widget _nameListView(BuildContext context, List<Result>? items) {
    return Selector<HomePageViewModel, dynamic>(
      builder: (context, value, child) {
        return NameListView(items: items!);
      },
      selector: (context, provider) {
        return provider;
      },
    );
  }
}
