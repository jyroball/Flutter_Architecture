import 'package:project2/domain/use_case/userPosts/userPosts_usecase.dart';
import 'package:project2/domain/repository/users/users_repository.dart';
import 'package:project2/domain/repository/posts/posts_repository.dart';
import 'injection_container.dart';

class UseCaseRegistry {
  void registerUseCases() {
    sl.registerSingleton<GetUserPostsUseCase>(
      GetUserPostsUseCase(
        usersRepository: sl<UsersRepository>(),
        postsRepository: sl<PostsRepository>(),
      ),
    );
  }
}
