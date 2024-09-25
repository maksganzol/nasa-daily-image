import 'package:flutter/material.dart';

class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage({
    super.key,
    this.height,
    required this.url,
  });
  final double? height;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      height: height,
      loadingBuilder: (context, child, loadingProgress) =>
          (loadingProgress?.expectedTotalBytes ?? 0) > (loadingProgress?.cumulativeBytesLoaded ?? 0)
              ? const Center(child: CircularProgressIndicator())
              : child,
    );
  }
}
