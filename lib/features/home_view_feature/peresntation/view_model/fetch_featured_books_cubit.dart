import 'package:booky_app/features/home_view_feature/domain/entities/home_view_entity.dart';
import 'package:booky_app/features/home_view_feature/domain/use_case/fetch_feature_books_use_case.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'fetch_featured_books_state.dart';

class FetchFeaturedBooksCubit extends Cubit<FetchFeaturedBooksState> {
  FetchFeaturedBooksCubit({required this.featureBooksUseCase})
    : super(FetchFeaturedBooksInitial());
  final FetchFeatureBooksUseCase featureBooksUseCase;

  Future<void> fetchFeaturedBooks() async {
    emit(FetchFeaturedBooksLoading());
    var result = await featureBooksUseCase.call();
    result.fold(
      (failure) => emit(FetchFeaturedBooksFailure(failure.message)),
      (books) => emit(FetchFeaturedBooksSuccess(books)),
    );
  }
}
