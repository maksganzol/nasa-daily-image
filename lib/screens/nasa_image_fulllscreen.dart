import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nasa_daily_image/bloc/nasa_image_bloc.dart';
import 'package:nasa_daily_image/bloc/nasa_image_state.dart';
import 'package:nasa_daily_image/widgets/api_error_widget.dart';
import 'package:nasa_daily_image/widgets/app_network_image.dart';

class NasaImageFulllscreen extends StatelessWidget {
  const NasaImageFulllscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NasaImageCubit, NasaImageState>(
      builder: (context, state) => switch (state) {
        NasaImageLoading() => const Center(
            child: CircularProgressIndicator(),
          ),
        NasaImageError(error: final error) => Center(
            child: ApiErrorWidget(error: error),
          ),
        NasaImageData(fullScreenImage: final image) => GestureDetector(
            onTap: context.pop,
            child: AppNetworkImage(url: image),
          )
      },
    );
  }
}
