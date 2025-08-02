import 'package:project2/core/util/data_state.dart';
import 'package:project2/domain/entities/users/users_entity.dart';

abstract class UsersRepository {
  Future<DataState<List<UsersEntity>>> getUsers();
}