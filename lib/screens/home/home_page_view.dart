import 'package:flutter/material.dart';
import 'package:imdp_api_app/controller/api_services.dart';
import 'package:imdp_api_app/product/service/project_dio.dart';
import 'package:imdp_api_app/screens/home/home_page_provider.dart';
import 'package:imdp_api_app/screens/home/widgets/card_info.dart';
import 'package:imdp_api_app/screens/home/widgets/card_poster.dart';
import 'package:imdp_api_app/screens/home/widgets/create_movie_card.dart';
import 'package:imdp_api_app/screens/home/widgets/lsw_movie.dart';
import 'package:imdp_api_app/screens/home/widgets/templace_holder.dart';
import 'package:provider/provider.dart';

import '../../models/by_name_model.dart';
import '../../product/global/theme_notifier.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> with ProjectDioMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomePageProvider>(
      create: (context) => HomePageProvider(BookService(service)),
      builder: ((context, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Movie List"),
            actions: [
              IconButton(
                  onPressed: () {
                    context.read<ThemeNotifier>().changeTheme();
                  },
                  icon: const Icon(Icons.dark_mode_rounded)),
            ],
          ),
          body: Column(
            children: [
              const TempPlaceHolder(),
              Expanded(child: _nameListView(context, context.watch<HomePageProvider>().data)),
            ],
          ),
        );
      }),
    );
  }

// error handle -> apiden gelen hatayı gösterir
  Widget _nameListView(BuildContext context, List<Result>? items) {
    return Selector<HomePageProvider, dynamic>(
      builder: (context, value, child) {
        return NameListView(items: items!);
      },
      selector: (context, provider) {
        return provider;
      },
    );
  }
}
