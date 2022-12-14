// ignore_for_file: non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:imdp_api_app/screens/historySearch/model/history_search_model.dart';
import 'package:imdp_api_app/screens/home/home_page_view.dart';
import 'package:imdp_api_app/screens/search/search_view_model.dart';
import 'package:provider/provider.dart';

import '../../../controller/injection.dart';
import '../../historySearch/history_search.dart';
import '../../historySearch/history_search_view_model.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchPageViewModel>(
      builder: (context, value, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // back button
            _ClosePageButton(context),
            // TextField
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.50,
              child: TextField(
                controller: serviceLocator<SearchPageViewModel>().nameController,
              ),
            ),
            // search button
            _searchbutton(),
            _showHistory(context),
          ],
        );
      },
    );
  }

  InkWell _ClosePageButton(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePageView(),
          )),
      child: const Icon(Icons.close),
    );
  }

  InkWell _showHistory(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const HistorySearchView()));
        },
        child: const Icon(Icons.history));
  }

  InkWell _searchbutton() {
    return InkWell(
        onTap: () {
          final name = serviceLocator<SearchPageViewModel>().nameController.text;
          final date = DateTime.now();
          HistorySearchModel model = HistorySearchModel(word: name, date: date);
          serviceLocator<HistorySearchViewModel>().writeHive(model);
          serviceLocator<SearchPageViewModel>().getSearchName(name);
          if (kDebugMode) {
            print(name);
          }
        },
        child: const Icon(Icons.search));
  }
}
