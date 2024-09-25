// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nasa_daily_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NasaDailyImageModel _$NasaDailyImageModelFromJson(Map<String, dynamic> json) {
  return _NasaDailyImageModel.fromJson(json);
}

/// @nodoc
mixin _$NasaDailyImageModel {
  String get url => throw _privateConstructorUsedError;
  String get hdurl => throw _privateConstructorUsedError;
  String get title =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'media_type', unknownEnumValue: MediaType.unsupported)
  MediaType get mediaType => throw _privateConstructorUsedError;

  /// Serializes this NasaDailyImageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NasaDailyImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NasaDailyImageModelCopyWith<NasaDailyImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NasaDailyImageModelCopyWith<$Res> {
  factory $NasaDailyImageModelCopyWith(
          NasaDailyImageModel value, $Res Function(NasaDailyImageModel) then) =
      _$NasaDailyImageModelCopyWithImpl<$Res, NasaDailyImageModel>;
  @useResult
  $Res call(
      {String url,
      String hdurl,
      String title,
      @JsonKey(name: 'media_type', unknownEnumValue: MediaType.unsupported)
      MediaType mediaType});
}

/// @nodoc
class _$NasaDailyImageModelCopyWithImpl<$Res, $Val extends NasaDailyImageModel>
    implements $NasaDailyImageModelCopyWith<$Res> {
  _$NasaDailyImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NasaDailyImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? hdurl = null,
    Object? title = null,
    Object? mediaType = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      hdurl: null == hdurl
          ? _value.hdurl
          : hdurl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NasaDailyImageModelImplCopyWith<$Res>
    implements $NasaDailyImageModelCopyWith<$Res> {
  factory _$$NasaDailyImageModelImplCopyWith(_$NasaDailyImageModelImpl value,
          $Res Function(_$NasaDailyImageModelImpl) then) =
      __$$NasaDailyImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      String hdurl,
      String title,
      @JsonKey(name: 'media_type', unknownEnumValue: MediaType.unsupported)
      MediaType mediaType});
}

/// @nodoc
class __$$NasaDailyImageModelImplCopyWithImpl<$Res>
    extends _$NasaDailyImageModelCopyWithImpl<$Res, _$NasaDailyImageModelImpl>
    implements _$$NasaDailyImageModelImplCopyWith<$Res> {
  __$$NasaDailyImageModelImplCopyWithImpl(_$NasaDailyImageModelImpl _value,
      $Res Function(_$NasaDailyImageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NasaDailyImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? hdurl = null,
    Object? title = null,
    Object? mediaType = null,
  }) {
    return _then(_$NasaDailyImageModelImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      hdurl: null == hdurl
          ? _value.hdurl
          : hdurl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NasaDailyImageModelImpl implements _NasaDailyImageModel {
  const _$NasaDailyImageModelImpl(
      {required this.url,
      required this.hdurl,
      required this.title,
      @JsonKey(name: 'media_type', unknownEnumValue: MediaType.unsupported)
      required this.mediaType});

  factory _$NasaDailyImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NasaDailyImageModelImplFromJson(json);

  @override
  final String url;
  @override
  final String hdurl;
  @override
  final String title;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'media_type', unknownEnumValue: MediaType.unsupported)
  final MediaType mediaType;

  @override
  String toString() {
    return 'NasaDailyImageModel(url: $url, hdurl: $hdurl, title: $title, mediaType: $mediaType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NasaDailyImageModelImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.hdurl, hdurl) || other.hdurl == hdurl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, hdurl, title, mediaType);

  /// Create a copy of NasaDailyImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NasaDailyImageModelImplCopyWith<_$NasaDailyImageModelImpl> get copyWith =>
      __$$NasaDailyImageModelImplCopyWithImpl<_$NasaDailyImageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NasaDailyImageModelImplToJson(
      this,
    );
  }
}

abstract class _NasaDailyImageModel implements NasaDailyImageModel {
  const factory _NasaDailyImageModel(
      {required final String url,
      required final String hdurl,
      required final String title,
      @JsonKey(name: 'media_type', unknownEnumValue: MediaType.unsupported)
      required final MediaType mediaType}) = _$NasaDailyImageModelImpl;

  factory _NasaDailyImageModel.fromJson(Map<String, dynamic> json) =
      _$NasaDailyImageModelImpl.fromJson;

  @override
  String get url;
  @override
  String get hdurl;
  @override
  String get title; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'media_type', unknownEnumValue: MediaType.unsupported)
  MediaType get mediaType;

  /// Create a copy of NasaDailyImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NasaDailyImageModelImplCopyWith<_$NasaDailyImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
