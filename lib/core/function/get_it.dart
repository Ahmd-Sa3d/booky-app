import 'package:booky_app/features/home_view_feature/data/repo_imp/home_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home_view_feature/data/data_sources/home_local_data_source.dart';
import '../../features/home_view_feature/data/data_sources/home_remote_data_sources.dart';
import '../services/api_services.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));

  getIt.registerSingleton<HomeRepoImp>(
    HomeRepoImp(
      homeLocalDataSource: HomeLocalDataSourceImp(),
      homeRemoteDataSources: HomeRemoteDataSourcesImp(getIt<ApiServices>()),
    ),
  );
}
