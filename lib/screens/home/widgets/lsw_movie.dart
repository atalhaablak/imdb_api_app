import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../models/nameModel/by_name_model.dart';
import '../home_page_view_model.dart';
import 'create_movie_card.dart';

class NameListView extends StatelessWidget {
  const NameListView({super.key, required this.items});
  final List<Result> items;

  @override
  Widget build(BuildContext context) {
    return Selector<HomePageViewModel, dynamic>(
      builder: (context, value, child) {
        return ListView.builder(
          itemCount: (context.watch<HomePageViewModel>().data?.length),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (() {
                if (kDebugMode) {
                  print(items[index].imdbId);
                }
              }),
              child: CreateMovieCard(
                image: items[index].poster.toString(),
                title: items[index].title.toString(),
                year: items[index].year.toString(),
                type: items[index].type.toString(),
              ),
            );
          },
        );
      },
      selector: (context, provider) {
        return provider;
      },
    );
  }
}
