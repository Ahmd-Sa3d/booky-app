import 'package:booky_app/core/utils/app_consts.dart';
import 'package:booky_app/core/utils/app_theme.dart';
import 'package:booky_app/features/home_view_feature/domain/entities/home_view_entity.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/utils/app_router.dart';

void main() async{
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
    return MaterialApp.router(
      theme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
