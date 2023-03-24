import 'package:dartz/dartz.dart';

import '../entity/failure.dart';

abstract class CoreRepository {
  Future<Either<Failure, bool>> initApp();
}
