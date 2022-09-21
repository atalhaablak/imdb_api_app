import 'package:flutter/material.dart';
import 'package:imdp_api_app/screens/home/home_page_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageView(),
    );
  }
}
