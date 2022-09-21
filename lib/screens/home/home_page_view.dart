import 'package:flutter/material.dart';
import 'package:imdp_api_app/controller/api_services.dart';
import 'package:imdp_api_app/product/service/project_dio.dart';
import 'package:imdp_api_app/screens/home/home_page_provider.dart';
import 'package:provider/provider.dart';

import '../../models/by_name_model.dart';

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
          appBar: AppBar(),
          body: _nameListView(context, context.watch<HomePageProvider>().data ?? []),
        );
      }),
    );
  }

  ListView _nameListView(BuildContext context, List<Result> items) {
    return ListView.builder(
      itemCount: context.watch<HomePageProvider>().data?.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(20),
          height: 60,
          width: 60,
          color: Colors.red,
        );
      },
    );
  }
}
