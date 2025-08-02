import 'package:project2/core/util/data_state.dart';
import 'package:project2/domain/entities/posts/posts_entity.dart';

abstract class PostsRepository {
  Future<DataState<List<PostsEntity>>> getPosts();
}