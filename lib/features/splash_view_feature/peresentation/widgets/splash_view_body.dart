import 'package:booky_app/core/utils/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animatedController;
  late Animation<Offset> slidingAnimation;
  late Animation<double> fadingAnimation;

  @override
  void initState() {
    animatedController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    slidingAnimation = Tween<Offset>(begin: Offset(0, 5), end: Offset(0, 0))
        .animate(
          CurvedAnimation(parent: animatedController, curve: Curves.easeInOut),
        );
    fadingAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: animatedController, curve: Curves.easeInOut),
    );
    super.initState();
    animatedController.forward();
  }

  @override
  void dispose() {
    animatedController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: FadeTransition(
            opacity: fadingAnimation,
            child: SvgPicture.asset(AppImages.svgLogo),
          ),
        ),
        SizedBox(height: 20),
        SlideTransition(
          position: slidingAnimation,
          child: FadeTransition(
            opacity: fadingAnimation,
            child: Center(child: Text('Read Free Books')),
          ),
        ),
      ],
    );
  }
}
