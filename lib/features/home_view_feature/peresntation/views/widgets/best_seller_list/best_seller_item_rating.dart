import 'package:booky_app/core/utils/app_colors.dart';
import 'package:booky_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerItemRating extends StatelessWidget {
  const BestSellerItemRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FaIcon(FontAwesomeIcons.solidStar, size: 15, color: AppColors.yellow),
        SizedBox(width: 5),
        Text('4.9', style: AppStyles.montserrat16SMedium(context),),
        SizedBox(width: 5),
        Text(
          '(1500)',
          style: AppStyles.montserrat14SMedium(context)
              .copyWith(fontWeight: FontWeight.w400, color: AppColors.gray),
        ),
      ],
    );
  }
}
