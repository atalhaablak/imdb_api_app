// To parse this JSON data, do
//
//     final byNameModel = byNameModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'by_name_model.freezed.dart';
part 'by_name_model.g.dart';

ByNameModel byNameModelFromJson(String str) => ByNameModel.fromJson(json.decode(str));

String byNameModelToJson(ByNameModel data) => json.encode(data.toJson());

@freezed
abstract class ByNameModel with _$ByNameModel {
  const factory ByNameModel({
    bool? success,
    List<Result>? result,
  }) = _ByNameModel;

  factory ByNameModel.fromJson(Map<String, dynamic> json) => _$ByNameModelFromJson(json);
}

@freezed
abstract class Result with _$Result {
  const factory Result({
    @JsonKey(name: "Title") String? title,
    @JsonKey(name: "Year") String? year,
    @JsonKey(name: "imdbID") String? imdbId,
    @JsonKey(name: "Type") String? type,
    @JsonKey(name: "Poster") String? poster,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
