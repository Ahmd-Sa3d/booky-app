import 'package:hive/hive.dart';
part 'home_view_entity.g.dart';
@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String? image;
  @HiveField(1)
  final String bookId;
  @HiveField(2)
  final String title;
  @HiveField(3)
  final String? authorName;
  @HiveField(4)
  final String? price;
  @HiveField(5)
  final num rating;

  BookEntity({
    required this.image,
    required this.title,
    required this.bookId,
    required this.authorName,
    required this.price,
    required this.rating,
  });
}
