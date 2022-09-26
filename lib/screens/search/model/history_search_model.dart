import 'dart:convert';

class HistorySearchModel {
  final String word;
  final DateTime date;

  HistorySearchModel(
    this.word,
    this.date,
  );

  List<HistorySearchModel> historyList = [];

  HistorySearchModel copyWith({
    String? word,
    DateTime? date,
  }) {
    return HistorySearchModel(
      word ?? this.word,
      date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'word': word,
      'date': date.millisecondsSinceEpoch,
    };
  }

  factory HistorySearchModel.fromMap(Map<String, dynamic> map) {
    return HistorySearchModel(
      map['word'] as String,
      DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory HistorySearchModel.fromJson(String source) => HistorySearchModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'HistorySearchModel(word: $word, date: $date)';

  @override
  bool operator ==(covariant HistorySearchModel other) {
    if (identical(this, other)) return true;

    return other.word == word && other.date == date;
  }

  @override
  int get hashCode => word.hashCode ^ date.hashCode;
}
