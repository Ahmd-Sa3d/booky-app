import 'package:hive/hive.dart';

import '../../features/home_view_feature/domain/entities/home_view_entity.dart';

class AppFunction {
  static void saveLocalBookData(List<BookEntity> books, String boxName) {
    var box = Hive.box(boxName);
    box.addAll(books);
  }
}