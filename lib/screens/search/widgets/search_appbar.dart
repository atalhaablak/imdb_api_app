import 'package:flutter/material.dart';
import 'package:imdp_api_app/screens/historySearch/model/history_search_model.dart';
import 'package:imdp_api_app/screens/search/search_view_model.dart';
import 'package:provider/provider.dart';

import '../../../controller/injection.dart';
import '../../historySearch/history_search.dart';
import '../../historySearch/widgets/history_search_view_model.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchPageViewModel>(
      builder: (context, value, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // back button
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HistorySearchView()));
                },
                icon: const Icon(Icons.history)),
            // TextField
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.60,
              child: TextField(
                controller: serviceLocator<SearchPageViewModel>().nameController,
              ),
            ),
            // search button
            IconButton(
                onPressed: () {
                  final name = serviceLocator<SearchPageViewModel>().nameController.text;
                  // HistorySearchModel search = HistorySearchModel(word: name);
                  serviceLocator<HistorySearchViewModel>().writeHive(name);
                  serviceLocator<SearchPageViewModel>().getSearchName(name);
                  print(name);
                },
                icon: const Icon(Icons.search)),
          ],
        );
      },
    );
  }
}
