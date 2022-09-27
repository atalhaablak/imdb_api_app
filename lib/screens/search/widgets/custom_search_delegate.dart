import 'package:flutter/material.dart';
import 'package:imdp_api_app/product/global/app_text_style.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    IconButton(
      onPressed: (() {
        if (query.isEmpty) {
          close(context, null); // Close searchbar
        } else {
          query = "";
        }
      }),
      icon: Icon(Icons.clear),
    );
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () => close(context, null), // close searchbar
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(query, style: AppTextStyle.movieTitle.textStyle),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = [
      "Batman",
      "Inception",
      "Family",
      "Formula",
    ];

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          onTap: () {
            query = suggestion;
          },
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(suggestion),
              const Icon(Icons.history),
            ],
          ),
        );
      },
    );
  }
}
