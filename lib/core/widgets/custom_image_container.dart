
import 'package:flutter/cupertino.dart';

class CustomImageContainer extends StatelessWidget {
  const CustomImageContainer({super.key, required this.width, required this.height, required this.image});
  final double width;
  final double height;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: width / height,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
