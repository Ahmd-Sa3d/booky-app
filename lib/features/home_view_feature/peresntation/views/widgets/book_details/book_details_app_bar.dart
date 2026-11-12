import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BookDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(scrolledUnderElevation: 0,
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
      ],
      automaticallyImplyLeading: false,
      title: IconButton(
        onPressed: () {
          GoRouter.of(context).pop();
        },
        icon: FaIcon(FontAwesomeIcons.x, size: 25),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kBottomNavigationBarHeight);
}
