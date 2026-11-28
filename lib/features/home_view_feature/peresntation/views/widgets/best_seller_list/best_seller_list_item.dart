import 'package:booky_app/core/utils/app_colors.dart';
import 'package:booky_app/core/utils/app_images.dart';
import 'package:booky_app/core/utils/app_router.dart';
import 'package:booky_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/widgets/custom_image_container.dart';
import '../../../../domain/entities/home_view_entity.dart';
import 'best_seller_item_rating.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key, required this.book});

  final BookEntity book;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetails, extra: book);
      },
      child: SizedBox(
        height: 105,
        child: Row(
          children: [
            CustomImageContainer(
              ratio: 0.66666666666667,
              image: book.image ?? AppImages.noImageFoud,
            ),
            SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width * 0.4,
                    child: Text(
                      style: AppStyles.spectra20regular(context),
                      book.title,
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  Text(
                    book.authorName ?? 'unknown',
                    style: AppStyles.montserrat14SMedium(context)
                        .copyWith(color: AppColors.gray),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Free',
                          style: AppStyles.montserrat20SBold(context),
                        ),
                        Spacer(),
                        BestSellerItemRating(book: book),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
