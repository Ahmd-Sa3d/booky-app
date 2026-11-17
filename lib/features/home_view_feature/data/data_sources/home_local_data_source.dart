import 'package:booky_app/core/utils/app_consts.dart';
import 'package:booky_app/features/home_view_feature/domain/entities/home_view_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks();

  List<BookEntity> fetchNewestBooks();
}

class HomeLocalDataSourceImp extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks() {
    var box = Hive.box<BookEntity>(AppConsts.kFeaturedBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    var box = Hive.box<BookEntity>(AppConsts.kNewestBox);
    return box.values.toList();
  }
}
