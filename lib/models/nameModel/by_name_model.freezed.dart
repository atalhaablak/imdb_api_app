// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'by_name_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ByNameModel _$ByNameModelFromJson(Map<String, dynamic> json) {
  return _ByNameModel.fromJson(json);
}

/// @nodoc
mixin _$ByNameModel {
  bool? get success => throw _privateConstructorUsedError;
  List<Result>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ByNameModelCopyWith<ByNameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ByNameModelCopyWith<$Res> {
  factory $ByNameModelCopyWith(
          ByNameModel value, $Res Function(ByNameModel) then) =
      _$ByNameModelCopyWithImpl<$Res>;
  $Res call({bool? success, List<Result>? result});
}

/// @nodoc
class _$ByNameModelCopyWithImpl<$Res> implements $ByNameModelCopyWith<$Res> {
  _$ByNameModelCopyWithImpl(this._value, this._then);

  final ByNameModel _value;
  // ignore: unused_field
  final $Res Function(ByNameModel) _then;

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
              as List<Result>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ByNameModelCopyWith<$Res>
    implements $ByNameModelCopyWith<$Res> {
  factory _$$_ByNameModelCopyWith(
          _$_ByNameModel value, $Res Function(_$_ByNameModel) then) =
      __$$_ByNameModelCopyWithImpl<$Res>;
  @override
  $Res call({bool? success, List<Result>? result});
}

/// @nodoc
class __$$_ByNameModelCopyWithImpl<$Res> extends _$ByNameModelCopyWithImpl<$Res>
    implements _$$_ByNameModelCopyWith<$Res> {
  __$$_ByNameModelCopyWithImpl(
      _$_ByNameModel _value, $Res Function(_$_ByNameModel) _then)
      : super(_value, (v) => _then(v as _$_ByNameModel));

  @override
  _$_ByNameModel get _value => super._value as _$_ByNameModel;

  @override
  $Res call({
    Object? success = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_ByNameModel(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      result: result == freezed
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ByNameModel implements _ByNameModel {
  const _$_ByNameModel({this.success, final List<Result>? result})
      : _result = result;

  factory _$_ByNameModel.fromJson(Map<String, dynamic> json) =>
      _$$_ByNameModelFromJson(json);

  @override
  final bool? success;
  final List<Result>? _result;
  @override
  List<Result>? get result {
    final value = _result;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ByNameModel(success: $success, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ByNameModel &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  _$$_ByNameModelCopyWith<_$_ByNameModel> get copyWith =>
      __$$_ByNameModelCopyWithImpl<_$_ByNameModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ByNameModelToJson(
      this,
    );
  }
}

abstract class _ByNameModel implements ByNameModel {
  const factory _ByNameModel(
      {final bool? success, final List<Result>? result}) = _$_ByNameModel;

  factory _ByNameModel.fromJson(Map<String, dynamic> json) =
      _$_ByNameModel.fromJson;

  @override
  bool? get success;
  @override
  List<Result>? get result;
  @override
  @JsonKey(ignore: true)
  _$$_ByNameModelCopyWith<_$_ByNameModel> get copyWith =>
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
  @JsonKey(name: "imdbID")
  String? get imdbId => throw _privateConstructorUsedError;
  @JsonKey(name: "Type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "Poster")
  String? get poster => throw _privateConstructorUsedError;

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
      @JsonKey(name: "imdbID") String? imdbId,
      @JsonKey(name: "Type") String? type,
      @JsonKey(name: "Poster") String? poster});
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
    Object? imdbId = freezed,
    Object? type = freezed,
    Object? poster = freezed,
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
      imdbId: imdbId == freezed
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: poster == freezed
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: "imdbID") String? imdbId,
      @JsonKey(name: "Type") String? type,
      @JsonKey(name: "Poster") String? poster});
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
    Object? imdbId = freezed,
    Object? type = freezed,
    Object? poster = freezed,
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
      imdbId: imdbId == freezed
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: poster == freezed
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: "imdbID") this.imdbId,
      @JsonKey(name: "Type") this.type,
      @JsonKey(name: "Poster") this.poster});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  @JsonKey(name: "Title")
  final String? title;
  @override
  @JsonKey(name: "Year")
  final String? year;
  @override
  @JsonKey(name: "imdbID")
  final String? imdbId;
  @override
  @JsonKey(name: "Type")
  final String? type;
  @override
  @JsonKey(name: "Poster")
  final String? poster;

  @override
  String toString() {
    return 'Result(title: $title, year: $year, imdbId: $imdbId, type: $type, poster: $poster)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.imdbId, imdbId) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.poster, poster));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(imdbId),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(poster));

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
      @JsonKey(name: "imdbID") final String? imdbId,
      @JsonKey(name: "Type") final String? type,
      @JsonKey(name: "Poster") final String? poster}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  @JsonKey(name: "Title")
  String? get title;
  @override
  @JsonKey(name: "Year")
  String? get year;
  @override
  @JsonKey(name: "imdbID")
  String? get imdbId;
  @override
  @JsonKey(name: "Type")
  String? get type;
  @override
  @JsonKey(name: "Poster")
  String? get poster;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}
