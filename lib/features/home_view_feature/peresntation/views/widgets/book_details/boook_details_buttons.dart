import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import 'book_details_buttons.dart';

class BookDetailsButtons extends StatelessWidget {
  const BookDetailsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomBooksDetailsButton(
          title: '19.99€',
          borderRadius: BorderRadiusGeometry.horizontal(
            left: Radius.circular(16),
          ),
          backGroundColor: AppColors.white,
          textColor: AppColors.black,
        ),
        CustomBooksDetailsButton(
          title: 'Free preview',
          borderRadius: BorderRadiusGeometry.horizontal(
            right: Radius.circular(16),
          ),
          backGroundColor: AppColors.orange,
          textColor: AppColors.white,
        ),
      ],
    );
  }
}
