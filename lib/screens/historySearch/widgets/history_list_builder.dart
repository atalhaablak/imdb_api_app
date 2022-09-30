import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controller/injection.dart';
import '../../../product/global/app_text_style.dart';
import '../history_search_view_model.dart';

class HistorySearchLsw extends StatelessWidget {
  const HistorySearchLsw({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, value, child) {
        return ListView.builder(
          itemCount: serviceLocator<HistorySearchViewModel>().readBox.length,
          itemBuilder: (context, index) {
            var accesList = serviceLocator<HistorySearchViewModel>().readBox[index];
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
                          serviceLocator<HistorySearchViewModel>().readBox[index].word,
                          style: AppTextStyle.infoText.textStyle,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "${accesList.date.hour.toString()}h",
                    style: AppTextStyle.infoText.textStyle,
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
