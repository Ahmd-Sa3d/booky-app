import 'package:flutter/cupertino.dart';

import '../../../../domain/entities/home_view_entity.dart';
import 'horizontal_list_item.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key, required this.books});

  final List<BookEntity> books;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemCount: books.length,
        padding: EdgeInsets.only(left: 30),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            HorizontalListItem(books: books[index]),
      ),
    );
  }
}
