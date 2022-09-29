import 'package:flutter/material.dart';
import 'package:imdp_api_app/controller/injection.dart';
import 'package:imdp_api_app/screens/historySearch/history_search_view_model.dart';
import 'package:imdp_api_app/screens/historySearch/widgets/history_list_builder.dart';
import 'package:imdp_api_app/screens/historySearch/widgets/history_search_appbar.dart';
import 'package:provider/provider.dart';

class HistorySearchView extends StatefulWidget {
  const HistorySearchView({super.key});

  @override
  State<HistorySearchView> createState() => _HistorySearchViewState();
}

class _HistorySearchViewState extends State<HistorySearchView> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => serviceLocator<HistorySearchViewModel>(),
      builder: (context, child) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: const [
                HistorySearchPageAppBar(),
                Expanded(child: HistorySearchLsw()),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
