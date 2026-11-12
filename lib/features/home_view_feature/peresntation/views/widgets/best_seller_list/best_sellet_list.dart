import 'package:booky_app/features/home_view_feature/peresntation/views/widgets/best_seller_list/best_seller_list_item.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../../../core/utils/app_styles.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: BestSellerListItem(),
      ),
    );
  }
}
