import 'package:flutter/material.dart';
import 'package:imdp_api_app/screens/search/search_page_view_model.dart';
import 'package:imdp_api_app/screens/search/widgets/search_page_appbar.dart';
import 'package:provider/provider.dart';

import '../../controller/injection.dart';

class SearchPageView extends StatefulWidget {
  const SearchPageView({super.key});

  @override
  State<SearchPageView> createState() => _SearchPageViewState();
}

class _SearchPageViewState extends State<SearchPageView> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SearchPageViewModel>(
      create: (context) => serviceLocator<SearchPageViewModel>(),
      builder: (context, child) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: const [
                SearchPageAppBar(),
              ],
            ),
          ),
        );
      },
    );
  }
}
