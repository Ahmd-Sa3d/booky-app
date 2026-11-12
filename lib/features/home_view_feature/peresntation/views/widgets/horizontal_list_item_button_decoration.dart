import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/app_colors.dart';

class HorizontalListItemButtonDecoration extends StatelessWidget {
  const HorizontalListItemButtonDecoration({
    super.key, required this.widget,
  });

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 3),
        child: Container(width: 30, height: 30,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.white.withAlpha(135),
                  AppColors.white.withAlpha(50),
                ],
              ),
              shape: BoxShape.circle,
              color: AppColors.white.withAlpha(150),
            ),
            child: widget

        ),
      ),
    );
  }
}
