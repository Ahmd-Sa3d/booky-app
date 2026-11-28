import 'package:booky_app/features/home_view_feature/domain/entities/home_view_entity.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../best_seller_list/best_seller_item_rating.dart';

class BookDetailsInfo extends StatelessWidget {
  const BookDetailsInfo({super.key, required this.book});

  final BookEntity book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            book.title,
            style: AppStyles.spectra20regular(context).copyWith(fontSize: 30),
          ),
        ),
        SizedBox(height: 6),
        Text(
          book.authorName ?? 'Unknown',
          style: AppStyles.montserrat16SMedium(context)
              .copyWith(fontSize: 18, color: AppColors.gray),
        ),
        SizedBox(height: 16),
        BestSellerItemRating(book: book),
      ],
    );
  }
}
