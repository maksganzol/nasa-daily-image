// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nasa_daily_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NasaDailyImageModelImpl _$$NasaDailyImageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NasaDailyImageModelImpl(
      url: json['url'] as String,
      hdurl: json['hdurl'] as String,
      title: json['title'] as String,
      mediaType: $enumDecode(_$MediaTypeEnumMap, json['media_type'],
          unknownValue: MediaType.unsupported),
    );

Map<String, dynamic> _$$NasaDailyImageModelImplToJson(
        _$NasaDailyImageModelImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'hdurl': instance.hdurl,
      'title': instance.title,
      'media_type': _$MediaTypeEnumMap[instance.mediaType]!,
    };

const _$MediaTypeEnumMap = {
  MediaType.image: 'image',
  MediaType.unsupported: 'unsupported',
};
