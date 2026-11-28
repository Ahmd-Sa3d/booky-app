part of 'fetch_featured_books_cubit.dart';

@immutable
sealed class FetchFeaturedBooksState {}

final class FetchFeaturedBooksInitial extends FetchFeaturedBooksState {}

final class FetchFeaturedBooksLoading extends FetchFeaturedBooksState {}

final class FetchFeaturedBooksPaginationFailure
    extends FetchFeaturedBooksState {
  final String errorMessage;

  new(this.errorMessage);
}

final class FetchFeaturedBooksPaginationLoading
    extends FetchFeaturedBooksState {}

final class FetchFeaturedBooksSuccess extends FetchFeaturedBooksState {
  final List<BookEntity> books;

  new(this.books);
}

final class FetchFeaturedBooksFailure extends FetchFeaturedBooksState {
  final String message;

  new(this.message);
}
