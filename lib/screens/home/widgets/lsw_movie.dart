// ignore_for_file: must_call_super

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../models/nameModel/by_name_model.dart';
import '../home_page_view_model.dart';
import 'create_movie_card.dart';

class NameListView extends StatefulWidget {
  const NameListView({super.key, required this.items});
  final List<Result> items;

  @override
  State<NameListView> createState() => _NameListViewState();
}

class _NameListViewState extends State<NameListView> with AutomaticKeepAliveClientMixin {
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
                  print(widget.items[index].imdbId);
                }
              }),
              child: CreateMovieCard(
                image: widget.items[index].poster.toString(),
                title: widget.items[index].title.toString(),
                year: widget.items[index].year.toString(),
                type: widget.items[index].type.toString(),
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

  @override
  bool get wantKeepAlive => true;
}
