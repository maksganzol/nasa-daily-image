import 'package:dio/dio.dart';
import 'package:nasa_daily_image/models/nasa_daily_image_model.dart';
import 'package:retrofit/retrofit.dart';

part 'nasa_api.g.dart';

@RestApi()
abstract class NasaApi {
  factory NasaApi(Dio dio) = _NasaApi;

  @GET('/planetary/apod')
  Future<NasaDailyImageModel> getDailyImage({
    @Query('api_key') required String apiKey,
  });
}
