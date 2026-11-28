import 'package:booky_app/features/home_view_feature/domain/entities/home_view_entity.dart';
import 'package:flutter/cupertino.dart';

import 'book_details_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.book});

  final BookEntity book;

  @override
  Widget build(BuildContext context) {
    return BookDetailsBody(book: book);
  }
}
