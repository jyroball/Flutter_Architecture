import 'package:project2/data/repository/users/users_repository_impl.dart';
import 'package:project2/data/repository/posts/posts_repository_impl.dart';
import 'package:project2/domain/repository/users/users_repository.dart';
import 'package:project2/domain/repository/posts/posts_repository.dart';
import 'package:project2/data/data_source/posts/posts_service.dart';
import 'package:project2/data/data_source/users/users_service.dart';
import 'injection_container.dart';

class RepositoryRegistry {
  void registerRepositories() {
    sl.registerSingleton<UsersRepository>(
      UsersRepositoryImpl(sl<UsersService>()),
    );

    sl.registerSingleton<PostsRepository>(
      PostsRepositoryImpl(sl<PostsService>()),
    );
  }
}
