import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nasa_daily_image/bloc/nasa_image_bloc.dart';
import 'package:nasa_daily_image/screens/nasa_image_preview_screen.dart';

import 'setup_dependencies.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependencies();
  runApp(const NasaDailyImageApp());
}

class NasaDailyImageApp extends StatelessWidget {
  const NasaDailyImageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NasaImageCubit(
        api: getIt(),
        apiKey: 'IHE6wfIXbhRbcJKIZQTcJt0MmvCPQffEa3Ox70ey',
      )..load(),
      child: const MaterialApp(
        title: 'Nasa Daily Image',
        home: NasaImagePreviewScreen(),
      ),
    );
  }
}
