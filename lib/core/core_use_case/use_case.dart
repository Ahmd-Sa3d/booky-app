import 'package:dartz/dartz.dart';

import '../failure/failures.dart';

abstract class UseCase<T, P> {
  Future<Either<Failures, T>> call([P p]);
}

class NoParameter {}
