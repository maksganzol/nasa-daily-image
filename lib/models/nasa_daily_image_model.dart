import 'package:freezed_annotation/freezed_annotation.dart';

part 'nasa_daily_image_model.g.dart';
part 'nasa_daily_image_model.freezed.dart';

@freezed
class NasaDailyImageModel with _$NasaDailyImageModel {
  const factory NasaDailyImageModel({
    required String url,
    required String hdurl,
    required String title,
    // ignore: invalid_annotation_target
    @JsonKey(
      name: 'media_type',
      unknownEnumValue: MediaType.unsupported,
    )
    required MediaType mediaType,
  }) = _NasaDailyImageModel;

  factory NasaDailyImageModel.fromJson(Map<String, dynamic> json) =>
      _$NasaDailyImageModelFromJson(json);
}

enum MediaType {
  image,
  unsupported;
}
