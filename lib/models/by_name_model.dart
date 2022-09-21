class SearchByNameModel {
  List<Result>? result;

  SearchByNameModel({this.result});

  SearchByNameModel.fromJson(Map<String, dynamic> json) {
    if (json['result'] != null) {
      result = <Result>[];
      json['result'].forEach((v) {
        result!.add(Result.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (result != null) {
      data['result'] = result!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Result {
  String? title;
  String? year;
  String? imdbID;
  String? type;
  String? poster;

  Result({this.title, this.year, this.imdbID, this.type, this.poster});

  Result.fromJson(Map<String, dynamic> json) {
    title = json['Title'];
    year = json['Year'];
    imdbID = json['imdbID'];
    type = json['Type'];
    poster = json['Poster'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Title'] = title;
    data['Year'] = year;
    data['imdbID'] = imdbID;
    data['Type'] = type;
    data['Poster'] = poster;
    return data;
  }
}
