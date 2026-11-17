import 'package:booky_app/features/home_view_feature/domain/entities/home_view_entity.dart';
import 'package:booky_app/features/home_view_feature/domain/use_case/fetch_newest_books.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'fetch_newest_books_state.dart';

class FetchNewestBooksCubit extends Cubit<FetchNewestBooksState> {
  FetchNewestBooksCubit({required this.fetchNewestBooksUseCase})
    : super(FetchNewestBooksInitial());
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;

  Future<void> fetchNewestBooksCubit() async {
    emit(FetchNewestBooksLoading());
    var result = await fetchNewestBooksUseCase.call();
    result.fold(
      (failure) => emit(FetchNewestBooksFailure(message: failure.message)),
      (books) => emit(FetchNewestBooksSuccess(books)),
    );
  }
}
