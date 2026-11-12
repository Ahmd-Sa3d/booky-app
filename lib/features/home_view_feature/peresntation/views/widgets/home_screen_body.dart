import 'package:booky_app/core/utils/app_colors.dart';
import 'package:booky_app/features/home_view_feature/peresntation/views/widgets/home_custom_sliver_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import 'best_seller_list/best_sellet_list.dart';
import 'home_horizontal_list/horizontal_list_view.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: CustomScrollView(
        slivers: [
          HomeCustomSliverAppBar(),
          SliverToBoxAdapter(child: HorizontalListView()),
          SliverToBoxAdapter(child: SizedBox(height: 50)),
          SliverPadding(
            padding: EdgeInsetsGeometry.only(left: 30),
            sliver: SliverToBoxAdapter(
              child: Text(
                'Best Seller',
                style: AppStyles.montserrat18SemiBold(context),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverPadding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 30),
            sliver: BestSellerList(),
          ),
        ],
      ),
    );
  }
}
