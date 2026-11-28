import 'package:booky_app/features/home_view_feature/domain/entities/home_view_entity.dart';
import 'package:booky_app/features/home_view_feature/peresntation/views/widgets/best_seller_list/best_seller_list_item.dart';
import 'package:flutter/cupertino.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key, required this.book});

  final List<BookEntity> book;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: book.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: BestSellerListItem(book: book[index]),
      ),
    );
  }
}
