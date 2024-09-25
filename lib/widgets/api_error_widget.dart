import 'package:flutter/material.dart';
import 'package:nasa_daily_image/bloc/api_error.dart';

class ApiErrorWidget extends StatelessWidget {
  const ApiErrorWidget({
    super.key,
    required this.error,
  });
  final APIError error;
  @override
  Widget build(BuildContext context) {
    final text = switch (error) {
      ApiErrorUnknown(message: final message) => message,
      ApiErrorUnsupportedMedia() => 'Sorry, current type of media is unsupported.'
    };

    return Text(
      text,
      style: const TextStyle(fontSize: 24),
    );
  }
}
