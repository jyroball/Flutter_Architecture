import 'package:project2/core/usecases/usecase.dart';
import 'package:project2/core/util/data_state.dart';
import 'package:project2/domain/entities/users/users_entity.dart';
import 'package:project2/domain/repository/users/users_repository.dart';

class UsersUseCase implements UseCase<DataState<List<UsersEntity>>, void> {
  final UsersRepository _repository;
  UsersUseCase(this._repository);

  @override
  Future<DataState<List<UsersEntity>>> call({void params}) {
    return _repository.getUsers();
  }
}