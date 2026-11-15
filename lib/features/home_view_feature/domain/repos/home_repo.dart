import 'package:booky_app/core/failure/failures.dart';
import 'package:dartz/dartz.dart';

import '../entities/home_view_entity.dart';

abstract class HomeRepo {
  Future <Either<Failures,List<BookEntity>>> fetchFeaturedBooks();
  Future <Either<Failures,List<BookEntity>>> fetchNewestBooks();
}