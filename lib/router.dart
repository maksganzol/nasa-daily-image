import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nasa_daily_image/screens/nasa_image_fulllscreen.dart';
import 'package:nasa_daily_image/screens/nasa_image_preview_screen.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const NasaImagePreviewScreen(),
      routes: [
        GoRoute(
          path: 'full-screen',
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            transitionDuration: const Duration(milliseconds: 350),
            reverseTransitionDuration: const Duration(milliseconds: 350),
            key: state.pageKey,
            child: const NasaImageFulllscreen(),
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) =>
                FadeTransition(
              opacity: animation,
              child: child,
            ),
          ),
        ),
      ],
    ),
  ],
);
