import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'horizontal_list_item_button_decoration.dart';

class HorizontalListItemButton extends StatelessWidget {
  const HorizontalListItemButton({super.key});

  @override
  Widget build(BuildContext context) {
    return HorizontalListItemButtonDecoration(
      widget: IconButton(
        onPressed: () {},
        icon: FaIcon(FontAwesomeIcons.play, color: Colors.white, size: 15),
      ),
    );
  }
}
