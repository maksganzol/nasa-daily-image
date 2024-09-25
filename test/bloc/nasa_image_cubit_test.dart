import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nasa_daily_image/api/nasa_api.dart';
import 'package:nasa_daily_image/bloc/api_error.dart';
import 'package:nasa_daily_image/bloc/nasa_image_bloc.dart';
import 'package:nasa_daily_image/bloc/nasa_image_state.dart';
import 'package:nasa_daily_image/models/nasa_daily_image_model.dart';

class MockApi extends Mock implements NasaApi {}

void main() {
  group('NasaImageCubit test', () {
    final api = MockApi();
    const mockApiKey = 'mockApiKey';
    const mockImage = NasaDailyImageModel(
      url: 'mockUrl',
      hdurl: 'mockHdUrl',
      title: 'mockTitle',
      mediaType: MediaType.image,
    );

    const mockUnsupportedMedia = NasaDailyImageModel(
      url: 'mockUrl',
      hdurl: 'mockHdUrl',
      title: 'mockTitle',
      mediaType: MediaType.unsupported,
    );
    blocTest<NasaImageCubit, NasaImageState>(
      'When NasaImageCubit.load is called and mediaType is MediaType.image then NasaImageData state should be returned',
      setUp: () {
        when(() => api.getDailyImage(apiKey: mockApiKey)).thenAnswer((_) async => mockImage);
      },
      build: () => NasaImageCubit(
        api: api,
        apiKey: mockApiKey,
      ), // <-- Создание инстанса Cubit
      act: (cubit) => cubit.load(),
      expect: () => [
        NasaImageData(
          image: mockImage.url,
          fullScreenImage: mockImage.hdurl,
          title: mockImage.title,
        ),
      ],
    );
    blocTest<NasaImageCubit, NasaImageState>(
      'When NasaImageCubit.load is called and mediaType is MediaType.unsupported then NasaImageError state should be returned',
      setUp: () {
        when(() => api.getDailyImage(apiKey: mockApiKey)).thenAnswer(
          (_) async => mockUnsupportedMedia,
        );
      },
      build: () => NasaImageCubit(
        api: api,
        apiKey: mockApiKey,
      ), // <-- Создание инстанса Cubit
      act: (cubit) => cubit.load(),
      expect: () => const [
        NasaImageError(error: ApiErrorUnsupportedMedia()),
      ],
    );
  });
}
