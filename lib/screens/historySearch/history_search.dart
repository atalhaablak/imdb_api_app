import 'package:flutter/material.dart';
import 'package:imdp_api_app/controller/injection.dart';
import 'package:imdp_api_app/screens/historySearch/widgets/history_search_view_model.dart';
import 'package:imdp_api_app/screens/search/search_view.dart';
import 'package:provider/provider.dart';
import '../../product/global/app_text.dart';
import '../../product/global/app_text_style.dart';

class HistorySearchView extends StatelessWidget {
  const HistorySearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => serviceLocator<HistorySearchViewModel>(),
      builder: (context, child) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SearchPageView(),
                              ));
                        },
                        icon: const Icon(Icons.chevron_left_outlined)),
                    const SizedBox(width: 50),
                    Text(
                      AppText.historyPage,
                      style: AppTextStyle.movieTitle.textStyle,
                    ),
                  ],
                ),
                Expanded(
                  child: Consumer(
                    builder: (context, value, child) {
                      return ListView.builder(
                        itemCount: serviceLocator<HistorySearchViewModel>().box.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(Icons.history_outlined),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 16),
                                      child: Text(
                                        ((serviceLocator<HistorySearchViewModel>().box.values.map((e) => e)).toList())[index]
                                            .toString(),
                                        style: AppTextStyle.infoText.textStyle,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "1 saat",
                                  style: AppTextStyle.infoText.textStyle,
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
