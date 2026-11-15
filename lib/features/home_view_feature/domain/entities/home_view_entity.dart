class BookEntity {
  final String? image;
  final String bookId;
  final String title;
  final String? authorName;
  final String? price;
  final num rating;

  new({
    required this.image,
    required this.title,
    required this.bookId,
    required this.authorName,
    required this.price,
    required this.rating,
  });
}
