import 'package:booky_app/core/utils/app_colors.dart';
import 'package:booky_app/core/utils/app_images.dart';
import 'package:booky_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_image_container.dart';
import 'best_seller_item_rating.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key});

  // final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: 105,
      child: Row(
        children: [
          CustomImageContainer(
            width: 70,
            height: 105,
            image: AppImages.harryPotter,
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
                    'Harry Potter and the Goblet of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                ),
                Text(
                  'J.K. Rowling',
                  style: AppStyles.montserrat14SMedium(context)
                      .copyWith(color: AppColors.gray),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(r'$20.99',style: AppStyles.montserrat20SBold(context),),
                      Spacer(),
                      BestSellerItemRating(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
