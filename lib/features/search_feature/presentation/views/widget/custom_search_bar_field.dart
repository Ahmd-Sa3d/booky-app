import 'package:booky_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomSearchBarField extends StatelessWidget {
  const CustomSearchBarField({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      leading: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
        child: Icon(Icons.arrow_back_rounded),
      ),
      side: WidgetStateProperty.all(BorderSide(color: AppColors.white)),
      hintText: 'write book name',
      hintStyle: WidgetStateProperty.all(
        TextStyle(color: AppColors.white.withAlpha(75)),
      ),
      backgroundColor: WidgetStateProperty.all(AppColors.primary),
      trailing: [
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(Icons.search, color: AppColors.white),
        ),
      ],
    );
  }
}
