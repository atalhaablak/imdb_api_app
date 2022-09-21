import 'package:flutter/material.dart';

class CardPoster extends StatefulWidget {
  const CardPoster({super.key, required this.image});
  final String image;

  @override
  State<CardPoster> createState() => _CardPosterState();
}

class _CardPosterState extends State<CardPoster> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
        child: Image.network(widget.image),
      ),
    );
  }
}