import 'package:booky_app/core/core_use_case/use_case.dart';
import 'package:booky_app/core/failure/failures.dart';
import 'package:booky_app/features/home_view_feature/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../entities/home_view_entity.dart';

class FetchNewestBooks extends UseCase<List<BookEntity>, NoParameter> {
  final HomeRepo homeRepo;

FetchNewestBooks(this.homeRepo);

  @override
  Future<Either<Failures, List<BookEntity>>> call([NoParameter? p]) async{
    return await homeRepo.fetchNewestBooks();
  }

}