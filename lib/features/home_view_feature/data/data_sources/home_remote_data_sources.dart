import 'package:booky_app/core/services/api_services.dart';
import 'package:booky_app/core/utils/app_consts.dart';
import 'package:booky_app/core/utils/app_function.dart';
import 'package:booky_app/features/home_view_feature/data/models/book_model.dart';

import '../../domain/entities/home_view_entity.dart';

abstract class HomeRemoteDataSources {
  Future<List<BookEntity>> fetchFeaturedBooks();

  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourcesImp implements HomeRemoteDataSources {
  final ApiServices apiServices;

  HomeRemoteDataSourcesImp(this.apiServices);

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiServices.get(
      endPoint: 'volumes?q=animal&maxResults=6&key=AIzaSyB7sCrs5AGyoOJHrd3likZijb9-gJYBIgM',
    );
    List<BookEntity> books = getBooksList(data);

    AppFunction.saveLocalBookData(books, AppConsts.kFeaturedBox);
    return books;
  }



  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiServices.get(
      endPoint: 'volumes?q=harry+potter&maxResults=6&key=AIzaSyB7sCrs5AGyoOJHrd3likZijb9-gJYBIgM',
    );
    List<BookEntity> books = getBooksList(data);
    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];

    for (var item in data['items']) {
      books.add(BookModel.fromJson(item));
    }
    return books;
  }
}
