// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'by_name_model.dart';

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
      title: json['Title'] as String?,
      year: json['Year'] as String?,
      imdbId: json['imdbID'] as String?,
      type: json['Type'] as String?,
      poster: json['Poster'] as String?,
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'Title': instance.title,
      'Year': instance.year,
      'imdbID': instance.imdbId,
      'Type': instance.type,
      'Poster': instance.poster,
    };
