import 'package:booky_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.primary,
    appBarTheme: AppBarTheme(backgroundColor: AppColors.primary),
  );
}
