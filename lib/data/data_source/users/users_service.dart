import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:project2/core/config/endpoints.dart';
import 'package:project2/core/util/dio_instance.dart';
import 'package:project2/data/model/users/users_model.dart';

part 'users_service.g.dart';

@RestApi(baseUrl: Endpoints.baseUrl)
abstract class UsersService {
  factory UsersService({String? baseUrl}) {
    return _UsersService(
      DioInstance.init(),
      baseUrl: baseUrl ?? Endpoints.baseUrl,
    );
  }

  // Get all users
  @GET(Endpoints.users)
  Future<HttpResponse<List<UsersModel>>> getUsers();

  // Get single user by ID
  @GET("${Endpoints.users}/{id}")
  Future<HttpResponse<UsersModel>> getUserById(@Path("id") int id);
}
