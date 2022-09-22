// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:imdp_api_app/product/global/app_text_style.dart';

class CardMovieInfo extends StatelessWidget {
  const CardMovieInfo({
    Key? key,
    required this.title,
    required this.year,
    required this.type,
  }) : super(key: key);
  final String title;
  final String year;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            maxLines: 3,
            style: AppTextStyle.movieTitle.textStyle,
          ),
          const SizedBox(height: 10),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Yıl: $year", style: AppTextStyle.subTitle.textStyle),
              Text("Tür: $type", style: AppTextStyle.subTitle.textStyle),
            ],
          ))
        ],
      ),
    );
  }
}
