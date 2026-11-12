import 'package:flutter/cupertino.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../best_seller_list/best_seller_item_rating.dart';

class BookDetailsInfo extends StatelessWidget {
  const BookDetailsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'The Jungle Book',
          style: AppStyles.spectra20regular(context).copyWith(fontSize: 30),
        ),
        SizedBox(height: 6),
        Text(
          'Rudyard Kipling',
          style: AppStyles.montserrat16SMedium(context)
              .copyWith(fontSize: 18, color: AppColors.gray),
        ),
        SizedBox(height: 16),
        BestSellerItemRating(),
      ],
    );
  }
}
