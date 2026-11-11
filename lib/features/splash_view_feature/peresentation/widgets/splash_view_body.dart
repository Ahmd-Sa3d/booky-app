import 'package:booky_app/core/utils/app_colors.dart';
import 'package:booky_app/core/utils/app_images.dart';
import 'package:booky_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

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
    animatedControllerMethod();
    fadingMethod();
    super.initState();
    animatedController.forward();

    navigateMethod();
  }

  @override
  void dispose() {
    animatedController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
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
      ),
    );
  }

  /// methods ///
  Future navigateMethod() {
    return Future.delayed(Duration(seconds: 3), () async {
      if (!mounted) return;
      await GoRouter.of(context).pushReplacement(AppRouter.homeScreen);
    });
  }

  Animation<double> fadingMethod() {
    return fadingAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: animatedController, curve: Curves.easeInOut),
    );
  }

  void animatedControllerMethod() {
    animatedController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1900),
    );
    slidingAnimation = Tween<Offset>(begin: Offset(0, 5), end: Offset(0, 0))
        .animate(
          CurvedAnimation(parent: animatedController, curve: Curves.easeInOut),
        );
  }
}
