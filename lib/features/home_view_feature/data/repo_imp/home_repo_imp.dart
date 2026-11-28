import 'package:booky_app/core/failure/failures.dart';
import 'package:booky_app/features/home_view_feature/data/data_sources/home_local_data_source.dart';
import 'package:booky_app/features/home_view_feature/data/data_sources/home_remote_data_sources.dart';
import 'package:booky_app/features/home_view_feature/domain/entities/home_view_entity.dart';
import 'package:booky_app/features/home_view_feature/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp extends HomeRepo {
  final HomeRemoteDataSources homeRemoteDataSources;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImp({
    required this.homeRemoteDataSources,
    required this.homeLocalDataSource,
  });

  @override
  Future<Either<Failures, List<BookEntity>>> fetchFeaturedBooks({
    int pageNumber = 0,
  }) async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchFeaturedBooks(pageNumber: pageNumber);
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSources.fetchFeaturedBooks(
        pageNumber: pageNumber,
      );
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, List<BookEntity>>> fetchNewestBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchNewestBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSources.fetchNewestBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
