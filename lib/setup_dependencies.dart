import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nasa_daily_image/api/nasa_api.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerLazySingleton(
    () => Dio(
      BaseOptions(
        baseUrl: 'https://api.nasa.gov',
      ),
    ),
  );

  getIt.registerLazySingleton(
    () => NasaApi(
      getIt(),
    ),
  );
}
