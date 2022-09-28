import 'package:flutter/material.dart';
import 'package:imdp_api_app/screens/home/widgets/card_poster.dart';

import 'card_info.dart';

class CreateMovieCard extends StatelessWidget {
  const CreateMovieCard({super.key, required this.image, required this.title, required this.year, required this.type});

  final String image;
  final String title;
  final String year;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Row(
        children: [
          CardPoster(image: image),
          Expanded(
              child: CardMovieInfo(
            title: title,
            year: year,
            type: type,
          ))
        ],
      ),
    );
  }
}
