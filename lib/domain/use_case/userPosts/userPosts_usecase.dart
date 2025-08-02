import 'package:dio/dio.dart';
import 'package:project2/core/util/data_state.dart';
import 'package:project2/domain/entities/userPosts/userPosts_entity.dart';
import 'package:project2/domain/entities/users/users_entity.dart';
import 'package:project2/domain/entities/posts/posts_entity.dart';
import 'package:project2/domain/repository/users/users_repository.dart';
import 'package:project2/domain/repository/posts/posts_repository.dart';

class GetUserPostsUseCase {
  final UsersRepository usersRepository;
  final PostsRepository postsRepository;

  GetUserPostsUseCase({
    required this.usersRepository,
    required this.postsRepository,
  });

  Future<DataState<List<UserPostsEntity>>> call() async {
    final usersResult = await usersRepository.getUsers();
    final postsResult = await postsRepository.getPosts();

    if (usersResult is DataSuccess && postsResult is DataSuccess) {
      final users = usersResult.data ?? [];
      final posts = postsResult.data ?? [];
      final merged = _mergeUsersWithPosts(users, posts);
      return DataSuccess(merged);
    } 
    else {
      if (usersResult is DataFailed) return DataFailed(usersResult.error!);
      if (postsResult is DataFailed) return DataFailed(postsResult.error!);

      return DataFailed(
        DioException(
          error: 'Unknown error merging users and posts',
          requestOptions: RequestOptions(path: ''),
          type: DioExceptionType.unknown,
        ),
      );
    }
  }

  List<UserPostsEntity> _mergeUsersWithPosts(
    List<UsersEntity> users,
    List<PostsEntity> posts,
  ) {
    final Map<int, List<PostsEntity>> postsByUser = {};
    for (final post in posts) {
      final userId = post.userId ?? -1;
      postsByUser.putIfAbsent(userId, () => []).add(post);
    }

    return users.map((user) {
      final userPosts = postsByUser[user.id] ?? [];

      final postSummaries = userPosts
          .map((post) => PostSummaryEntity(
                title: post.title ?? '',
                body: post.body ?? '',
              ))
          .toList();

      return UserPostsEntity(
        name: user.name ?? '',
        username: user.username ?? '',
        email: user.email ?? '',
        posts: postSummaries,
      );
    }).toList();
  }
}
