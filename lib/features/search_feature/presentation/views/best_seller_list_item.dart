import 'package:booky_app/features/home_view_feature/peresntation/views/widgets/best_seller_list/best_seller_list_bloc_builder.dart';
import 'package:flutter/cupertino.dart';

class SearchBarList extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: BestSellerListBlocBuilder(),
        //todo : add list
      ),
      itemCount: 15,
    );
  }
}
