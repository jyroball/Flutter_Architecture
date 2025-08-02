import 'package:project2/core/usecases/usecase.dart';
import 'package:project2/core/util/data_state.dart';
import 'package:project2/domain/entities/posts/posts_entity.dart';
import 'package:project2/domain/repository/posts/posts_repository.dart';

class PostsUseCase implements UseCase<DataState<List<PostsEntity>>, void> {
  final PostsRepository _repository;
  PostsUseCase(this._repository);

  @override
  Future<DataState<List<PostsEntity>>> call({void params}) {
    return _repository.getPosts();
  }
}