import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerItemRating extends StatelessWidget {
  const BestSellerItemRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FaIcon(FontAwesomeIcons.solidStar, size: 12, color: Colors.amber),
        SizedBox(width: 5),
        Text('4.9'),
        SizedBox(width: 5),
        Text('(1500)'),
      ],
    );
  }
}
