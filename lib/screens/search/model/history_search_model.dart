import 'package:hive/hive.dart';

part 'history_search_model.g.dart';

@HiveType(typeId: 0)
class HistorySearchModel {
  @HiveField(0)
  final String word;
  @HiveField(1)
  final DateTime date;

  HistorySearchModel({required this.word, required this.date});
}
