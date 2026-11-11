import 'package:booky_app/core/utils/app_colors.dart';
import 'package:booky_app/core/utils/app_theme.dart';
import 'package:booky_app/features/splash_view_feature/peresentation/views/splash_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  DevicePreview.enable();
  runApp(const BookyApp());
}

class BookyApp extends StatelessWidget {
  const BookyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: AppColors.primary, body: SplashView()),
    );
  }
}
