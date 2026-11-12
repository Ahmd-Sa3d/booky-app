import 'package:booky_app/core/utils/app_colors.dart';
import 'package:booky_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeCustomSliverAppBar extends StatelessWidget {
  const HomeCustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.primary,
      scrolledUnderElevation: 0,
      titleSpacing: 30,
      floating: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: IconButton(
            icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
            onPressed: () {},
          ),
        ),
      ],
      title: SvgPicture.asset(AppImages.svgLogo),
    );
  }
}
