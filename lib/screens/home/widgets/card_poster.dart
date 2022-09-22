import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardPoster extends StatelessWidget {
  const CardPoster({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
        child: CachedNetworkImage(
          imageUrl: image,
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
