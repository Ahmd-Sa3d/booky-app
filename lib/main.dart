import 'package:booky_app/core/function/get_it.dart';
import 'package:booky_app/core/utils/app_consts.dart';
import 'package:booky_app/core/utils/app_theme.dart';
import 'package:booky_app/features/home_view_feature/data/repo_imp/home_repo_imp.dart';
import 'package:booky_app/features/home_view_feature/domain/entities/home_view_entity.dart';
import 'package:booky_app/features/home_view_feature/domain/use_case/fetch_feature_books_use_case.dart';
import 'package:booky_app/features/home_view_feature/domain/use_case/fetch_newest_books.dart';
import 'package:booky_app/features/home_view_feature/peresntation/view_model/featured%20books%20cubit/fetch_featured_books_cubit.dart';
import 'package:booky_app/features/home_view_feature/peresntation/view_model/newest%20books%20cubit/fetch_newest_books_cubit.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/utils/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DevicePreview.enable();
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  Hive.openBox(AppConsts.kFeaturedBox);
  Hive.openBox(AppConsts.kNewestBox);

  runApp(const BookyApp());
}

class BookyApp extends StatelessWidget {
  const BookyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FetchFeaturedBooksCubit(
            featureBooksUseCase: FetchFeatureBooksUseCase(getIt<HomeRepoImp>()),
          ),
        ),

        BlocProvider(
          create: (context) => FetchNewestBooksCubit(
            fetchNewestBooksUseCase: FetchNewestBooksUseCase(
              getIt<HomeRepoImp>(),
            ),
          ),
        ),
      ],
      child: MaterialApp.router(
        theme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
