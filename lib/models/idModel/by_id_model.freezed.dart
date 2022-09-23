// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'by_id_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ByIdModel _$ByIdModelFromJson(Map<String, dynamic> json) {
  return _ByIdModel.fromJson(json);
}

/// @nodoc
mixin _$ByIdModel {
  bool? get success => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ByIdModelCopyWith<ByIdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ByIdModelCopyWith<$Res> {
  factory $ByIdModelCopyWith(ByIdModel value, $Res Function(ByIdModel) then) =
      _$ByIdModelCopyWithImpl<$Res>;
  $Res call({bool? success, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$ByIdModelCopyWithImpl<$Res> implements $ByIdModelCopyWith<$Res> {
  _$ByIdModelCopyWithImpl(this._value, this._then);

  final ByIdModel _value;
  // ignore: unused_field
  final $Res Function(ByIdModel) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ));
  }

  @override
  $ResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$$_ByIdModelCopyWith<$Res> implements $ByIdModelCopyWith<$Res> {
  factory _$$_ByIdModelCopyWith(
          _$_ByIdModel value, $Res Function(_$_ByIdModel) then) =
      __$$_ByIdModelCopyWithImpl<$Res>;
  @override
  $Res call({bool? success, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_ByIdModelCopyWithImpl<$Res> extends _$ByIdModelCopyWithImpl<$Res>
    implements _$$_ByIdModelCopyWith<$Res> {
  __$$_ByIdModelCopyWithImpl(
      _$_ByIdModel _value, $Res Function(_$_ByIdModel) _then)
      : super(_value, (v) => _then(v as _$_ByIdModel));

  @override
  _$_ByIdModel get _value => super._value as _$_ByIdModel;

  @override
  $Res call({
    Object? success = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_ByIdModel(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ByIdModel implements _ByIdModel {
  const _$_ByIdModel({this.success, this.result});

  factory _$_ByIdModel.fromJson(Map<String, dynamic> json) =>
      _$$_ByIdModelFromJson(json);

  @override
  final bool? success;
  @override
  final Result? result;

  @override
  String toString() {
    return 'ByIdModel(success: $success, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ByIdModel &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$_ByIdModelCopyWith<_$_ByIdModel> get copyWith =>
      __$$_ByIdModelCopyWithImpl<_$_ByIdModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ByIdModelToJson(
      this,
    );
  }
}

abstract class _ByIdModel implements ByIdModel {
  const factory _ByIdModel({final bool? success, final Result? result}) =
      _$_ByIdModel;

  factory _ByIdModel.fromJson(Map<String, dynamic> json) =
      _$_ByIdModel.fromJson;

  @override
  bool? get success;
  @override
  Result? get result;
  @override
  @JsonKey(ignore: true)
  _$$_ByIdModelCopyWith<_$_ByIdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  @JsonKey(name: "Title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "Year")
  String? get year => throw _privateConstructorUsedError;
  @JsonKey(name: "Rated")
  String? get rated => throw _privateConstructorUsedError;
  @JsonKey(name: "Released")
  String? get released => throw _privateConstructorUsedError;
  @JsonKey(name: "Runtime")
  String? get runtime => throw _privateConstructorUsedError;
  @JsonKey(name: "Genre")
  String? get genre => throw _privateConstructorUsedError;
  @JsonKey(name: "Director")
  String? get director => throw _privateConstructorUsedError;
  @JsonKey(name: "Writer")
  String? get writer => throw _privateConstructorUsedError;
  @JsonKey(name: "Actors")
  String? get actors => throw _privateConstructorUsedError;
  @JsonKey(name: "Plot")
  String? get plot => throw _privateConstructorUsedError;
  @JsonKey(name: "Language")
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: "Country")
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: "Awards")
  String? get awards => throw _privateConstructorUsedError;
  @JsonKey(name: "Poster")
  String? get poster => throw _privateConstructorUsedError;
  List<Rating>? get ratings => throw _privateConstructorUsedError;
  @JsonKey(name: "Metascore")
  String? get metascore => throw _privateConstructorUsedError;
  String? get imdbRating => throw _privateConstructorUsedError;
  String? get imdbVotes => throw _privateConstructorUsedError;
  String? get imdbId => throw _privateConstructorUsedError;
  @JsonKey(name: "Type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "DVD")
  String? get dvd => throw _privateConstructorUsedError;
  @JsonKey(name: "BoxOffice")
  String? get boxOffice => throw _privateConstructorUsedError;
  @JsonKey(name: "Production")
  String? get production => throw _privateConstructorUsedError;
  @JsonKey(name: "Website")
  String? get website => throw _privateConstructorUsedError;
  @JsonKey(name: "Response")
  String? get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "Title") String? title,
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
      @JsonKey(name: "Response") String? response});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res> implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result _value;
  // ignore: unused_field
  final $Res Function(Result) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? year = freezed,
    Object? rated = freezed,
    Object? released = freezed,
    Object? runtime = freezed,
    Object? genre = freezed,
    Object? director = freezed,
    Object? writer = freezed,
    Object? actors = freezed,
    Object? plot = freezed,
    Object? language = freezed,
    Object? country = freezed,
    Object? awards = freezed,
    Object? poster = freezed,
    Object? ratings = freezed,
    Object? metascore = freezed,
    Object? imdbRating = freezed,
    Object? imdbVotes = freezed,
    Object? imdbId = freezed,
    Object? type = freezed,
    Object? dvd = freezed,
    Object? boxOffice = freezed,
    Object? production = freezed,
    Object? website = freezed,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      rated: rated == freezed
          ? _value.rated
          : rated // ignore: cast_nullable_to_non_nullable
              as String?,
      released: released == freezed
          ? _value.released
          : released // ignore: cast_nullable_to_non_nullable
              as String?,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as String?,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      director: director == freezed
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as String?,
      writer: writer == freezed
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String?,
      actors: actors == freezed
          ? _value.actors
          : actors // ignore: cast_nullable_to_non_nullable
              as String?,
      plot: plot == freezed
          ? _value.plot
          : plot // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      awards: awards == freezed
          ? _value.awards
          : awards // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: poster == freezed
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      ratings: ratings == freezed
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<Rating>?,
      metascore: metascore == freezed
          ? _value.metascore
          : metascore // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbRating: imdbRating == freezed
          ? _value.imdbRating
          : imdbRating // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbVotes: imdbVotes == freezed
          ? _value.imdbVotes
          : imdbVotes // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbId: imdbId == freezed
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      dvd: dvd == freezed
          ? _value.dvd
          : dvd // ignore: cast_nullable_to_non_nullable
              as String?,
      boxOffice: boxOffice == freezed
          ? _value.boxOffice
          : boxOffice // ignore: cast_nullable_to_non_nullable
              as String?,
      production: production == freezed
          ? _value.production
          : production // ignore: cast_nullable_to_non_nullable
              as String?,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "Title") String? title,
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
      @JsonKey(name: "Response") String? response});
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, (v) => _then(v as _$_Result));

  @override
  _$_Result get _value => super._value as _$_Result;

  @override
  $Res call({
    Object? title = freezed,
    Object? year = freezed,
    Object? rated = freezed,
    Object? released = freezed,
    Object? runtime = freezed,
    Object? genre = freezed,
    Object? director = freezed,
    Object? writer = freezed,
    Object? actors = freezed,
    Object? plot = freezed,
    Object? language = freezed,
    Object? country = freezed,
    Object? awards = freezed,
    Object? poster = freezed,
    Object? ratings = freezed,
    Object? metascore = freezed,
    Object? imdbRating = freezed,
    Object? imdbVotes = freezed,
    Object? imdbId = freezed,
    Object? type = freezed,
    Object? dvd = freezed,
    Object? boxOffice = freezed,
    Object? production = freezed,
    Object? website = freezed,
    Object? response = freezed,
  }) {
    return _then(_$_Result(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      rated: rated == freezed
          ? _value.rated
          : rated // ignore: cast_nullable_to_non_nullable
              as String?,
      released: released == freezed
          ? _value.released
          : released // ignore: cast_nullable_to_non_nullable
              as String?,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as String?,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      director: director == freezed
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as String?,
      writer: writer == freezed
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String?,
      actors: actors == freezed
          ? _value.actors
          : actors // ignore: cast_nullable_to_non_nullable
              as String?,
      plot: plot == freezed
          ? _value.plot
          : plot // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      awards: awards == freezed
          ? _value.awards
          : awards // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: poster == freezed
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
      ratings: ratings == freezed
          ? _value._ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<Rating>?,
      metascore: metascore == freezed
          ? _value.metascore
          : metascore // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbRating: imdbRating == freezed
          ? _value.imdbRating
          : imdbRating // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbVotes: imdbVotes == freezed
          ? _value.imdbVotes
          : imdbVotes // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbId: imdbId == freezed
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      dvd: dvd == freezed
          ? _value.dvd
          : dvd // ignore: cast_nullable_to_non_nullable
              as String?,
      boxOffice: boxOffice == freezed
          ? _value.boxOffice
          : boxOffice // ignore: cast_nullable_to_non_nullable
              as String?,
      production: production == freezed
          ? _value.production
          : production // ignore: cast_nullable_to_non_nullable
              as String?,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result(
      {@JsonKey(name: "Title") this.title,
      @JsonKey(name: "Year") this.year,
      @JsonKey(name: "Rated") this.rated,
      @JsonKey(name: "Released") this.released,
      @JsonKey(name: "Runtime") this.runtime,
      @JsonKey(name: "Genre") this.genre,
      @JsonKey(name: "Director") this.director,
      @JsonKey(name: "Writer") this.writer,
      @JsonKey(name: "Actors") this.actors,
      @JsonKey(name: "Plot") this.plot,
      @JsonKey(name: "Language") this.language,
      @JsonKey(name: "Country") this.country,
      @JsonKey(name: "Awards") this.awards,
      @JsonKey(name: "Poster") this.poster,
      final List<Rating>? ratings,
      @JsonKey(name: "Metascore") this.metascore,
      this.imdbRating,
      this.imdbVotes,
      this.imdbId,
      @JsonKey(name: "Type") this.type,
      @JsonKey(name: "DVD") this.dvd,
      @JsonKey(name: "BoxOffice") this.boxOffice,
      @JsonKey(name: "Production") this.production,
      @JsonKey(name: "Website") this.website,
      @JsonKey(name: "Response") this.response})
      : _ratings = ratings;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  @JsonKey(name: "Title")
  final String? title;
  @override
  @JsonKey(name: "Year")
  final String? year;
  @override
  @JsonKey(name: "Rated")
  final String? rated;
  @override
  @JsonKey(name: "Released")
  final String? released;
  @override
  @JsonKey(name: "Runtime")
  final String? runtime;
  @override
  @JsonKey(name: "Genre")
  final String? genre;
  @override
  @JsonKey(name: "Director")
  final String? director;
  @override
  @JsonKey(name: "Writer")
  final String? writer;
  @override
  @JsonKey(name: "Actors")
  final String? actors;
  @override
  @JsonKey(name: "Plot")
  final String? plot;
  @override
  @JsonKey(name: "Language")
  final String? language;
  @override
  @JsonKey(name: "Country")
  final String? country;
  @override
  @JsonKey(name: "Awards")
  final String? awards;
  @override
  @JsonKey(name: "Poster")
  final String? poster;
  final List<Rating>? _ratings;
  @override
  List<Rating>? get ratings {
    final value = _ratings;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "Metascore")
  final String? metascore;
  @override
  final String? imdbRating;
  @override
  final String? imdbVotes;
  @override
  final String? imdbId;
  @override
  @JsonKey(name: "Type")
  final String? type;
  @override
  @JsonKey(name: "DVD")
  final String? dvd;
  @override
  @JsonKey(name: "BoxOffice")
  final String? boxOffice;
  @override
  @JsonKey(name: "Production")
  final String? production;
  @override
  @JsonKey(name: "Website")
  final String? website;
  @override
  @JsonKey(name: "Response")
  final String? response;

  @override
  String toString() {
    return 'Result(title: $title, year: $year, rated: $rated, released: $released, runtime: $runtime, genre: $genre, director: $director, writer: $writer, actors: $actors, plot: $plot, language: $language, country: $country, awards: $awards, poster: $poster, ratings: $ratings, metascore: $metascore, imdbRating: $imdbRating, imdbVotes: $imdbVotes, imdbId: $imdbId, type: $type, dvd: $dvd, boxOffice: $boxOffice, production: $production, website: $website, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.rated, rated) &&
            const DeepCollectionEquality().equals(other.released, released) &&
            const DeepCollectionEquality().equals(other.runtime, runtime) &&
            const DeepCollectionEquality().equals(other.genre, genre) &&
            const DeepCollectionEquality().equals(other.director, director) &&
            const DeepCollectionEquality().equals(other.writer, writer) &&
            const DeepCollectionEquality().equals(other.actors, actors) &&
            const DeepCollectionEquality().equals(other.plot, plot) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.awards, awards) &&
            const DeepCollectionEquality().equals(other.poster, poster) &&
            const DeepCollectionEquality().equals(other._ratings, _ratings) &&
            const DeepCollectionEquality().equals(other.metascore, metascore) &&
            const DeepCollectionEquality()
                .equals(other.imdbRating, imdbRating) &&
            const DeepCollectionEquality().equals(other.imdbVotes, imdbVotes) &&
            const DeepCollectionEquality().equals(other.imdbId, imdbId) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.dvd, dvd) &&
            const DeepCollectionEquality().equals(other.boxOffice, boxOffice) &&
            const DeepCollectionEquality()
                .equals(other.production, production) &&
            const DeepCollectionEquality().equals(other.website, website) &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(year),
        const DeepCollectionEquality().hash(rated),
        const DeepCollectionEquality().hash(released),
        const DeepCollectionEquality().hash(runtime),
        const DeepCollectionEquality().hash(genre),
        const DeepCollectionEquality().hash(director),
        const DeepCollectionEquality().hash(writer),
        const DeepCollectionEquality().hash(actors),
        const DeepCollectionEquality().hash(plot),
        const DeepCollectionEquality().hash(language),
        const DeepCollectionEquality().hash(country),
        const DeepCollectionEquality().hash(awards),
        const DeepCollectionEquality().hash(poster),
        const DeepCollectionEquality().hash(_ratings),
        const DeepCollectionEquality().hash(metascore),
        const DeepCollectionEquality().hash(imdbRating),
        const DeepCollectionEquality().hash(imdbVotes),
        const DeepCollectionEquality().hash(imdbId),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(dvd),
        const DeepCollectionEquality().hash(boxOffice),
        const DeepCollectionEquality().hash(production),
        const DeepCollectionEquality().hash(website),
        const DeepCollectionEquality().hash(response)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {@JsonKey(name: "Title") final String? title,
      @JsonKey(name: "Year") final String? year,
      @JsonKey(name: "Rated") final String? rated,
      @JsonKey(name: "Released") final String? released,
      @JsonKey(name: "Runtime") final String? runtime,
      @JsonKey(name: "Genre") final String? genre,
      @JsonKey(name: "Director") final String? director,
      @JsonKey(name: "Writer") final String? writer,
      @JsonKey(name: "Actors") final String? actors,
      @JsonKey(name: "Plot") final String? plot,
      @JsonKey(name: "Language") final String? language,
      @JsonKey(name: "Country") final String? country,
      @JsonKey(name: "Awards") final String? awards,
      @JsonKey(name: "Poster") final String? poster,
      final List<Rating>? ratings,
      @JsonKey(name: "Metascore") final String? metascore,
      final String? imdbRating,
      final String? imdbVotes,
      final String? imdbId,
      @JsonKey(name: "Type") final String? type,
      @JsonKey(name: "DVD") final String? dvd,
      @JsonKey(name: "BoxOffice") final String? boxOffice,
      @JsonKey(name: "Production") final String? production,
      @JsonKey(name: "Website") final String? website,
      @JsonKey(name: "Response") final String? response}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  @JsonKey(name: "Title")
  String? get title;
  @override
  @JsonKey(name: "Year")
  String? get year;
  @override
  @JsonKey(name: "Rated")
  String? get rated;
  @override
  @JsonKey(name: "Released")
  String? get released;
  @override
  @JsonKey(name: "Runtime")
  String? get runtime;
  @override
  @JsonKey(name: "Genre")
  String? get genre;
  @override
  @JsonKey(name: "Director")
  String? get director;
  @override
  @JsonKey(name: "Writer")
  String? get writer;
  @override
  @JsonKey(name: "Actors")
  String? get actors;
  @override
  @JsonKey(name: "Plot")
  String? get plot;
  @override
  @JsonKey(name: "Language")
  String? get language;
  @override
  @JsonKey(name: "Country")
  String? get country;
  @override
  @JsonKey(name: "Awards")
  String? get awards;
  @override
  @JsonKey(name: "Poster")
  String? get poster;
  @override
  List<Rating>? get ratings;
  @override
  @JsonKey(name: "Metascore")
  String? get metascore;
  @override
  String? get imdbRating;
  @override
  String? get imdbVotes;
  @override
  String? get imdbId;
  @override
  @JsonKey(name: "Type")
  String? get type;
  @override
  @JsonKey(name: "DVD")
  String? get dvd;
  @override
  @JsonKey(name: "BoxOffice")
  String? get boxOffice;
  @override
  @JsonKey(name: "Production")
  String? get production;
  @override
  @JsonKey(name: "Website")
  String? get website;
  @override
  @JsonKey(name: "Response")
  String? get response;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
mixin _$Rating {
  String? get source => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res>;
  $Res call({String? source, String? value});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res> implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  final Rating _value;
  // ignore: unused_field
  final $Res Function(Rating) _then;

  @override
  $Res call({
    Object? source = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_RatingCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$_RatingCopyWith(_$_Rating value, $Res Function(_$_Rating) then) =
      __$$_RatingCopyWithImpl<$Res>;
  @override
  $Res call({String? source, String? value});
}

/// @nodoc
class __$$_RatingCopyWithImpl<$Res> extends _$RatingCopyWithImpl<$Res>
    implements _$$_RatingCopyWith<$Res> {
  __$$_RatingCopyWithImpl(_$_Rating _value, $Res Function(_$_Rating) _then)
      : super(_value, (v) => _then(v as _$_Rating));

  @override
  _$_Rating get _value => super._value as _$_Rating;

  @override
  $Res call({
    Object? source = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_Rating(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rating implements _Rating {
  const _$_Rating({this.source, this.value});

  factory _$_Rating.fromJson(Map<String, dynamic> json) =>
      _$$_RatingFromJson(json);

  @override
  final String? source;
  @override
  final String? value;

  @override
  String toString() {
    return 'Rating(source: $source, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Rating &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_RatingCopyWith<_$_Rating> get copyWith =>
      __$$_RatingCopyWithImpl<_$_Rating>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RatingToJson(
      this,
    );
  }
}

abstract class _Rating implements Rating {
  const factory _Rating({final String? source, final String? value}) =
      _$_Rating;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$_Rating.fromJson;

  @override
  String? get source;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_RatingCopyWith<_$_Rating> get copyWith =>
      throw _privateConstructorUsedError;
}
