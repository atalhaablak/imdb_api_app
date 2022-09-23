import 'package:flutter/material.dart';
import 'package:imdp_api_app/controller/injection.dart';
import 'package:imdp_api_app/product/global/project_context.dart';
import 'package:imdp_api_app/product/global/theme_notifier.dart';
import 'package:imdp_api_app/screens/home/home_page_view.dart';
import 'package:provider/provider.dart';

void main() {
  init();
  runApp(MultiProvider(
    providers: [
      Provider(create: (_) => ProjectContext()),
      ChangeNotifierProvider(create: (context) => ThemeNotifier()),
    ],
    builder: (context, child) => MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageView(),
      theme: context.watch<ThemeNotifier>().currentTheme,
    );
  }
}
