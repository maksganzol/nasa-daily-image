import 'package:equatable/equatable.dart';
import 'package:nasa_daily_image/bloc/api_error.dart';

sealed class NasaImageState extends Equatable {
  const NasaImageState();
}

class NasaImageLoading extends NasaImageState {
  const NasaImageLoading();
  @override
  List<Object?> get props => [];
}

class NasaImageData extends NasaImageState {
  const NasaImageData({
    required this.image,
    required this.fullScreenImage,
    required this.title,
  });
  final String image;
  final String fullScreenImage;
  final String title;

  @override
  List<Object?> get props => [
        image,
        fullScreenImage,
        title,
      ];
}

class NasaImageError extends NasaImageState {
  const NasaImageError({
    required this.error,
  });
  final APIError error;

  @override
  List<Object?> get props => [error];
}
