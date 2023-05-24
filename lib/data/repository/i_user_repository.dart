 import 'package:dartz/dartz.dart';
import 'package:yaho_test/data/model/user.dart';

abstract class IUserRepository {
  Future<Either<Exception, User>> getUserData(int page);
}