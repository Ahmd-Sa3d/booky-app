import 'package:booky_app/core/failure/failures.dart';
import 'package:booky_app/features/home_view_feature/domain/entities/home_view_entity.dart';
import 'package:booky_app/features/home_view_feature/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/core_use_case/use_case.dart';

class FetchFeatureBooksUseCase extends UseCase<List<BookEntity>,NoParameter> {
  final HomeRepo homeRepo;

  FetchFeatureBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failures, List<BookEntity>>> call([NoParameter? p]) {
    // TODO: implement call
    throw UnimplementedError();
  }

}
