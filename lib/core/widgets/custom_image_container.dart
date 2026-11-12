import 'package:flutter/cupertino.dart';

class CustomImageContainer extends StatelessWidget {
  const CustomImageContainer({
    super.key,
    required this.image,
    this.widget, required this.ratio,
  });

  final double ratio;
  final String image;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: ratio,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
        ),
        child: widget,
      ),
    );
  }
}
