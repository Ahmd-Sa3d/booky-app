import 'package:booky_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'app_bar.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.primary, appBar: CustomAppBar());
  }
}
