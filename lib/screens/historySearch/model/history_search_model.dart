// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';

part 'history_search_model.g.dart';

@HiveType(typeId: 0)
class HistorySearchModel {
  @HiveField(0)
  String word;
  @HiveField(1)
  DateTime date;

  HistorySearchModel({
    required this.word,
    required this.date,
  });
}
