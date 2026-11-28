import 'package:booky_app/features/home_view_feature/peresntation/view_model/newest%20books%20cubit/fetch_newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_sellet_list.dart';

class BestSellerListBlocBuilder extends StatelessWidget {
  const BestSellerListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNewestBooksCubit, FetchNewestBooksState>(
      builder: (context, state) {
        if (state is FetchNewestBooksSuccess) {
          return BestSellerList(book: state.books);
        } else if (state is FetchNewestBooksFailure) {
          return SliverToBoxAdapter(child: Text(state.message));
        } else {
          return SliverToBoxAdapter(child: CircularProgressIndicator());
        }
      },
    );
  }
}
