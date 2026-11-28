import 'package:booky_app/core/utils/app_consts.dart';
import 'package:booky_app/features/home_view_feature/domain/entities/home_view_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks({int pageNumber = 0});

  List<BookEntity> fetchNewestBooks();
}

class HomeLocalDataSourceImp extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks({int pageNumber = 0}) {
    int startIndex = pageNumber * 10;
    int endIndex = (startIndex + 1) * 10;
    var box = Hive.box<BookEntity>(AppConsts.kFeaturedBox);
    int length = box.values.length;
    if (startIndex >= length || endIndex > length) {
      return [];
    }
    return box.values.toList().sublist(startIndex, endIndex);
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    var box = Hive.box<BookEntity>(AppConsts.kNewestBox);
    return box.values.toList();
  }
}
