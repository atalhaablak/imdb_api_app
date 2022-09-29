import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:imdp_api_app/controller/api_services.dart';
import 'package:imdp_api_app/controller/injection.dart';
import 'package:imdp_api_app/product/global/project_context.dart';
import 'package:imdp_api_app/product/global/theme_notifier.dart';
import 'package:imdp_api_app/screens/historySearch/model/history_search_model.dart';
import 'package:imdp_api_app/screens/home/home_page_view.dart';
import 'package:imdp_api_app/screens/home/home_page_view_model.dart';
import 'package:imdp_api_app/screens/search/search_view.dart';
import 'package:imdp_api_app/screens/search/search_view_model.dart';
import 'package:imdp_api_app/screens/tabbar/tabbar_view_model.dart';
import 'package:provider/provider.dart';

// ignore: constant_identifier_names
const HistorySearchBox = "HistorySearch";

void main() async {
  init();
  initHive();
  runApp(MultiProvider(
    providers: [
      Provider(create: (_) => ProjectContext()),
      ChangeNotifierProvider(
        create: (context) => ThemeNotifier(),
      ),
      ChangeNotifierProvider(create: ((context) => SearchPageViewModel())),
      ChangeNotifierProvider(create: ((context) => HomePageViewModel(serviceLocator<IBookService>()))),
    ],
    builder: (context, child) => const MyApp(),
  ));
}

void initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(HistorySearchModelAdapter());
  await Hive.openBox(HistorySearchBox);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TabbarViewModel>(
      create: (context) => TabbarViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePageView(),
        theme: context.watch<ThemeNotifier>().currentTheme,
      ),
    );
  }
}
