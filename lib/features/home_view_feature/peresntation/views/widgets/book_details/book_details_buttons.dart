import 'package:booky_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';


class CustomBooksDetailsButton extends StatelessWidget {
  const CustomBooksDetailsButton({
    super.key,
    required this.title,
    required this.borderRadius,
    required this.backGroundColor,
    required this.textColor,
  });

  final Color backGroundColor, textColor;
  final String title;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: borderRadius,
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: AppStyles.montserrat20SBold(context)
              .copyWith(color: textColor),
        ),
      ),
    );
  }
}
