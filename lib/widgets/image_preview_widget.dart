import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nasa_daily_image/widgets/app_network_image.dart';

class ImagePreviewWidget extends StatelessWidget {
  const ImagePreviewWidget({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: size.height / 8),
          Text(
            title,
            style: const TextStyle(fontSize: 36),
          ),
          SizedBox(height: size.height / 8),
          GestureDetector(
            onTap: () => context.go('/full-screen'),
            child: AppNetworkImage(
              url: image,
              height: size.height / 2,
            ),
          ),
        ],
      ),
    );
  }
}
