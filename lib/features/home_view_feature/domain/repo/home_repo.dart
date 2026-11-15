import 'package:booky_app/core/failure/failures.dart';
import 'package:dartz/dartz.dart';

import '../entity/home_view_entity.dart';

abstract class HomeRepo {
  Future <Either<Failures,List<HomeViewEntity>>> fetchFeaturedBooks();
  Future <Either<Failures,List<HomeViewEntity>>> fetchNewestBooks();
}