import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nasa_daily_image/bloc/nasa_image_bloc.dart';
import 'package:nasa_daily_image/bloc/nasa_image_state.dart';
import 'package:nasa_daily_image/widgets/api_error_widget.dart';
import 'package:nasa_daily_image/widgets/image_preview_widget.dart';

class NasaImagePreviewScreen extends StatefulWidget {
  const NasaImagePreviewScreen({super.key});

  @override
  State<NasaImagePreviewScreen> createState() => _NasaImagePreviewScreenState();
}

class _NasaImagePreviewScreenState extends State<NasaImagePreviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NasaImageCubit, NasaImageState>(
        builder: (context, state) => switch (state) {
          NasaImageLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
          NasaImageError(error: final error) => Center(
              child: ApiErrorWidget(error: error),
            ),
          NasaImageData(
            image: final image,
            title: final title,
          ) =>
            ImagePreviewWidget(
              image: image,
              title: title,
            ),
        },
      ),
    );
  }
}
