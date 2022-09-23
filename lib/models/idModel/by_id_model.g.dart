// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'by_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ByIdModel _$$_ByIdModelFromJson(Map<String, dynamic> json) => _$_ByIdModel(
      success: json['success'] as bool?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ByIdModelToJson(_$_ByIdModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      title: json['Title'] as String?,
      year: json['Year'] as String?,
      rated: json['Rated'] as String?,
      released: json['Released'] as String?,
      runtime: json['Runtime'] as String?,
      genre: json['Genre'] as String?,
      director: json['Director'] as String?,
      writer: json['Writer'] as String?,
      actors: json['Actors'] as String?,
      plot: json['Plot'] as String?,
      language: json['Language'] as String?,
      country: json['Country'] as String?,
      awards: json['Awards'] as String?,
      poster: json['Poster'] as String?,
      ratings: (json['ratings'] as List<dynamic>?)
          ?.map((e) => Rating.fromJson(e as Map<String, dynamic>))
          .toList(),
      metascore: json['Metascore'] as String?,
      imdbRating: json['imdbRating'] as String?,
      imdbVotes: json['imdbVotes'] as String?,
      imdbId: json['imdbId'] as String?,
      type: json['Type'] as String?,
      dvd: json['DVD'] as String?,
      boxOffice: json['BoxOffice'] as String?,
      production: json['Production'] as String?,
      website: json['Website'] as String?,
      response: json['Response'] as String?,
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'Title': instance.title,
      'Year': instance.year,
      'Rated': instance.rated,
      'Released': instance.released,
      'Runtime': instance.runtime,
      'Genre': instance.genre,
      'Director': instance.director,
      'Writer': instance.writer,
      'Actors': instance.actors,
      'Plot': instance.plot,
      'Language': instance.language,
      'Country': instance.country,
      'Awards': instance.awards,
      'Poster': instance.poster,
      'ratings': instance.ratings,
      'Metascore': instance.metascore,
      'imdbRating': instance.imdbRating,
      'imdbVotes': instance.imdbVotes,
      'imdbId': instance.imdbId,
      'Type': instance.type,
      'DVD': instance.dvd,
      'BoxOffice': instance.boxOffice,
      'Production': instance.production,
      'Website': instance.website,
      'Response': instance.response,
    };

_$_Rating _$$_RatingFromJson(Map<String, dynamic> json) => _$_Rating(
      source: json['source'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_RatingToJson(_$_Rating instance) => <String, dynamic>{
      'source': instance.source,
      'value': instance.value,
    };
