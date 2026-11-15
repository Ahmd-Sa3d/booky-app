import '../../domain/entities/home_view_entity.dart';

abstract class HomeRemoteDataSources{
  Future <List<BookEntity>> fetchFeaturedBooks();
  Future <List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourcesImp implements HomeRemoteDataSources {
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }

}