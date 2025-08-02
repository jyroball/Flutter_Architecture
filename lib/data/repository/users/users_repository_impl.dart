import 'package:project2/core/util/data_state.dart';
import 'package:project2/data/data_source/users/users_service.dart';
import 'package:project2/data/model/users/users_model.dart';
import 'package:project2/domain/entities/users/users_entity.dart';
import 'package:project2/domain/repository/users/users_repository.dart';

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';

class UsersRepositoryImpl implements UsersRepository {
  final UsersService _usersService;
  UsersRepositoryImpl(
    this._usersService,
  );

  @override
  Future<DataState<List<UsersEntity>>> getUsers() async {
    try {
      final HttpResponse<List<UsersModel>> httpResponse = await _usersService
        .getUsers();

      if(httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
          DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions
          ) 
        );
      }
    } on DioException catch(e) {
      return DataFailed(e);
    }
  }

}