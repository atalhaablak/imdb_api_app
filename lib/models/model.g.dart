// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ByNameModel _$$_ByNameModelFromJson(Map<String, dynamic> json) =>
    _$_ByNameModel(
      success: json['success'] as bool?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ByNameModelToJson(_$_ByNameModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      title: json['title'] as String?,
      year: json['year'] as String?,
      imdbId: json['imdbId'] as String?,
      type: json['type'] as String?,
      poster: json['poster'] as String?,
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'title': instance.title,
      'year': instance.year,
      'imdbId': instance.imdbId,
      'type': instance.type,
      'poster': instance.poster,
    };
