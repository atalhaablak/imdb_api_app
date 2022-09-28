import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:imdp_api_app/controller/injection.dart';
import 'package:imdp_api_app/screens/historySearch/history_search.dart';
import 'package:imdp_api_app/screens/search/search_view_model.dart';
import 'package:imdp_api_app/screens/search/widgets/search_appbar.dart';
import 'package:imdp_api_app/screens/search/widgets/search_lsw_movie.dart';
import 'package:provider/provider.dart';
import '../home/widgets/create_movie_card.dart';

class SearchPageView extends StatefulWidget {
  const SearchPageView({super.key});

  @override
  State<SearchPageView> createState() => _DetailPageViewState();
}

class _DetailPageViewState extends State<SearchPageView> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SearchPageViewModel>(
      create: (context) => serviceLocator<SearchPageViewModel>(),
      builder: (context, child) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SearchAppBar(),
                    const SizedBox(height: 20),
                    context.watch<SearchPageViewModel>().isLoading
                        ? const Expanded(child: SearchLswMovie())
                        : const Center(child: Text("Veri Bulunamadı")),
                  ],
                )),
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
