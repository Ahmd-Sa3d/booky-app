import 'package:booky_app/features/home_view_feature/peresntation/view_model/featured%20books%20cubit/fetch_featured_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/entities/home_view_entity.dart';
import 'horizontal_list_item.dart';

class HorizontalListView extends StatefulWidget {
  const HorizontalListView({super.key, required this.books});

  final List<BookEntity> books;

  @override
  State<HorizontalListView> createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends State<HorizontalListView> {
  final ScrollController _scrollController = ScrollController();
  int nextPage = 1;
  bool isLoading = false;

  @override
  void initState() {
    _scrollController.addListener(_handleScroll);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: widget.books.length,
        padding: EdgeInsets.only(left: 30),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            HorizontalListItem(books: widget.books[index]),
      ),
    );
  }

  ///methods

  void _handleScroll() async {
    var maxLength = _scrollController.position.maxScrollExtent * 0.7;
    var currentLength = _scrollController.position.pixels;
    if (currentLength >= maxLength) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<FetchFeaturedBooksCubit>(context)
            .fetchFeaturedBooks(pageNumber: nextPage++);
        isLoading = false;
      }
    }
  }
}
