import 'package:booky_app/features/search_feature/presentation/views/widget/custom_search_bar_field.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_item.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              scrolledUnderElevation: 0,
              title: CustomSearchBarField(),
              automaticallyImplyLeading: false,
            ),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverPadding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
              sliver: SearchBarList(),
            ),
          ],
        ),
      ),
    );
  }
}
