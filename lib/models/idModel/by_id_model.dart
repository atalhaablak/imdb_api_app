// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'by_id_model.freezed.dart';
part 'by_id_model.g.dart';

ByIdModel byIdModelFromJson(String str) => ByIdModel.fromJson(json.decode(str));

String byIdModelToJson(ByIdModel data) => json.encode(data.toJson());

@freezed
abstract class ByIdModel with _$ByIdModel {
  const factory ByIdModel({
    bool? success,
    Result? result,
  }) = _ByIdModel;

  factory ByIdModel.fromJson(Map<String, dynamic> json) => _$ByIdModelFromJson(json);
}

@freezed
abstract class Result with _$Result {
  const factory Result({
    @JsonKey(name: "Title") String? title,
    @JsonKey(name: "Year") String? year,
    @JsonKey(name: "Rated") String? rated,
    @JsonKey(name: "Released") String? released,
    @JsonKey(name: "Runtime") String? runtime,
    @JsonKey(name: "Genre") String? genre,
    @JsonKey(name: "Director") String? director,
    @JsonKey(name: "Writer") String? writer,
    @JsonKey(name: "Actors") String? actors,
    @JsonKey(name: "Plot") String? plot,
    @JsonKey(name: "Language") String? language,
    @JsonKey(name: "Country") String? country,
    @JsonKey(name: "Awards") String? awards,
    @JsonKey(name: "Poster") String? poster,
    List<Rating>? ratings,
    @JsonKey(name: "Metascore") String? metascore,
    String? imdbRating,
    String? imdbVotes,
    String? imdbId,
    @JsonKey(name: "Type") String? type,
    @JsonKey(name: "DVD") String? dvd,
    @JsonKey(name: "BoxOffice") String? boxOffice,
    @JsonKey(name: "Production") String? production,
    @JsonKey(name: "Website") String? website,
    @JsonKey(name: "Response") String? response,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
abstract class Rating with _$Rating {
  const factory Rating({
    String? source,
    String? value,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}
