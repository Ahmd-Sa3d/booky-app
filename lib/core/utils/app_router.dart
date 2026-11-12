import 'package:booky_app/features/home_view_feature/peresntation/views/home_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash_view_feature/peresentation/views/splash_view.dart';

class AppRouter {
  static const String splashScreen = '/';
  static const String homeScreen = '/homeScreen';
  final GoRouter router = GoRouter(
    initialLocation: AppRouter.homeScreen,
    routes: [
      GoRoute(
        path: AppRouter.splashScreen,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRouter.homeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
