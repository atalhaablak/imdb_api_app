import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class ByNameModel with _$ByNameModel {
  const factory ByNameModel({
    bool? success,
    List<Result>? result,
  }) = _ByNameModel;

  factory ByNameModel.fromJson(Map<String, dynamic> json) => _$ByNameModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    String? title,
    String? year,
    String? imdbId,
    String? type,
    String? poster,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
