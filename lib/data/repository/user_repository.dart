import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yaho_test/data/model/user.dart';
import 'package:yaho_test/data/repository/i_user_repository.dart';
import 'package:yaho_test/utils/string_utils.dart';


class UserRepository extends IUserRepository{
  final dio = Dio();

  @override
  Future<Either<Exception, User>> getUserData(int page) async {
    try {
      final urlRequest = '${StringUtils.baseUrl}?page=$page';
      final response = await dio.get(urlRequest);
      if (response.statusCode == 200 ) {
        final data = User.fromJson(response.data);
        return right(data);
      }
      return left(Exception(response.statusCode));
    } on Exception catch (e) {
      return left(e);
    }
  }
}