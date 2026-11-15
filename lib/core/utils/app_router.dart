import 'package:animations/animations.dart';
import 'package:booky_app/features/home_view_feature/peresntation/views/home_screen.dart';
import 'package:booky_app/features/home_view_feature/peresntation/views/widgets/book_details/book_details_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/search_feature/presentation/views/search_view.dart';
import '../../features/splash_view_feature/peresentation/views/splash_view.dart';

abstract class AppRouter {
  static const String splashScreen = '/';
  static const String homeScreen = '/homeScreen';
  static const String bookDetails = '/bookDetails';
  static const String searchView = '/searchView';
  static final GoRouter router = GoRouter(
    initialLocation: AppRouter.splashScreen,
    routes: [
      GoRoute(
        path: AppRouter.searchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: AppRouter.splashScreen,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRouter.homeScreen,
        builder: (context, state) => const HomeScreen(),
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: HomeScreen(),
            transitionDuration: const Duration(milliseconds: 800),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              
                  return SharedAxisTransition(
                    animation: animation,
                    secondaryAnimation: secondaryAnimation,
                     transitionType: SharedAxisTransitionType.horizontal,
                    child: child,
                  );
                },
          );
        },
      ),
      GoRoute(
        path: AppRouter.bookDetails,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
