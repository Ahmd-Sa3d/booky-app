import 'package:booky_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(titleSpacing: 30,
      title:SvgPicture.asset(AppImages.svgLogo),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: FaIcon(FontAwesomeIcons.magnifyingGlass),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
