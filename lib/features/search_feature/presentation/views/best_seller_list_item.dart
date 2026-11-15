import 'package:flutter/cupertino.dart';

import '../../../home_view_feature/peresntation/views/widgets/best_seller_list/best_seller_list_item.dart';

class SearchBarList extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: BestSellerListItem(),
      ),
      itemCount: 15,
    );
  }
}
