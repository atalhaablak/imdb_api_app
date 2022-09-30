import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:imdp_api_app/screens/search/search_view_model.dart';
import 'package:provider/provider.dart';
import '../../../controller/injection.dart';
import '../../detail/detail_page_view.dart';
import '../../detail/detail_page_view_model.dart';
import '../../home/widgets/create_movie_card.dart';

class SearchLswMovie extends StatelessWidget {
  const SearchLswMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchPageViewModel>(
      builder: (context, value, child) {
        final movieList = serviceLocator<SearchPageViewModel>().movieList;
        return ListView.builder(
          itemCount: movieList?.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (() {
                serviceLocator<DetailPageViewModel>().fetchById(movieList![index].imdbId.toString());
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailPageView(),
                    ));
                if (kDebugMode) {
                  print(movieList[index].imdbId);
                }
              }),
              child: CreateMovieCard(
                image: movieList![index].poster.toString(),
                title: movieList[index].title.toString(),
                year: movieList[index].year.toString(),
                type: movieList[index].type.toString(),
              ),
            );
          },
        );
      },
    );
  }
}
