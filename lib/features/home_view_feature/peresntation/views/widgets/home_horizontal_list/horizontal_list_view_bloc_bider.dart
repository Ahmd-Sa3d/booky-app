import 'package:booky_app/features/home_view_feature/domain/entities/home_view_entity.dart';
import 'package:booky_app/features/home_view_feature/peresntation/view_model/featured%20books%20cubit/fetch_featured_books_cubit.dart';
import 'package:booky_app/features/home_view_feature/peresntation/views/widgets/home_horizontal_list/horizontal_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HorizontalListViewBlocBider extends StatefulWidget {
  const HorizontalListViewBlocBider({super.key});

  @override
  State<HorizontalListViewBlocBider> createState() =>
      _HorizontalListViewBlocBiderState();
}

class _HorizontalListViewBlocBiderState
    extends State<HorizontalListViewBlocBider> {
  List<BookEntity> books = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FetchFeaturedBooksCubit, FetchFeaturedBooksState>(
      listener: (context, state) {
        if (state is FetchFeaturedBooksSuccess) {
          books.addAll(state.books);
        }
        if (state is FetchFeaturedBooksPaginationFailure) {
          [];
        }
      },
      builder: (context, state) {
        if (state is FetchFeaturedBooksSuccess ||
            state is FetchFeaturedBooksPaginationLoading ||
            state is FetchFeaturedBooksPaginationFailure) {
          return HorizontalListView(books: books);
        } else if (state is FetchFeaturedBooksFailure) {
          return Text(state.message);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
