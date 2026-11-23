import 'package:booky_app/features/home_view_feature/peresntation/view_model/featured%20books%20cubit/fetch_featured_books_cubit.dart';
import 'package:booky_app/features/home_view_feature/peresntation/views/widgets/home_horizontal_list/horizontal_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HorizontalListViewBlocBider extends StatelessWidget {
  const HorizontalListViewBlocBider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchFeaturedBooksCubit, FetchFeaturedBooksState>(
      builder: (context, state) {
        if (state is FetchFeaturedBooksSuccess) {
          return HorizontalListView(books: state.books);
        } else if (state is FetchFeaturedBooksFailure) {
          return Text(state.message);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
