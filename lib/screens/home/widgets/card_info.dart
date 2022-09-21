// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CardMovieInfo extends StatefulWidget {
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
  State<CardMovieInfo> createState() => _CardMovieInfoState();
}

class _CardMovieInfoState extends State<CardMovieInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Yıl: ${widget.year}"),
              Text("Tür: ${widget.type}"),
            ],
          ))
        ],
      ),
    );
  }
}
