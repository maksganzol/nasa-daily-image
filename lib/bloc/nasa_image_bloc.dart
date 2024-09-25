import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nasa_daily_image/api/nasa_api.dart';
import 'package:nasa_daily_image/bloc/api_error.dart';
import 'package:nasa_daily_image/bloc/nasa_image_state.dart';
import 'package:nasa_daily_image/models/nasa_daily_image_model.dart';

class NasaImageCubit extends Cubit<NasaImageState> {
  NasaImageCubit({
    required NasaApi api,
    required String apiKey,
  })  : _api = api,
        _apiKey = apiKey,
        super(const NasaImageLoading());
  final NasaApi _api;
  final String _apiKey;

  Future<void> load() async {
    try {
      final response = await _api.getDailyImage(apiKey: _apiKey);
      if (response.mediaType == MediaType.unsupported) {
        emit(
          const NasaImageError(
            error: ApiErrorUnsupportedMedia(),
          ),
        );
      } else {
        emit(
          NasaImageData(
            image: response.url,
            fullScreenImage: response.hdurl,
            title: response.title,
          ),
        );
      }
    } catch (error) {
      emit(
        NasaImageError(
          error: ApiErrorUnknown(
            message: error.toString(),
          ),
        ),
      );
    }
  }
}
