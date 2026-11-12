import 'package:booky_app/features/home_view_feature/peresntation/views/widgets/book_details/similar_books_list_item.dart';
import 'package:flutter/cupertino.dart';

class SimilarBooksList extends StatelessWidget {
  const SimilarBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: SimilarBookListItem(),
          ),
          itemCount: 5,
        ),
      ),
    );
  }
}
