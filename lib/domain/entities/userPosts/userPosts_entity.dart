import 'package:equatable/equatable.dart';
// import 'package:project2/domain/entities/posts/posts_entity.dart';
// import 'package:project2/domain/entities/users/users_entity.dart';

class UserPostsEntity extends Equatable {
  final String name;
  final String username;
  final String email;
  final List<PostSummaryEntity> posts;

  const UserPostsEntity({
    required this.name,
    required this.username,
    required this.email,
    required this.posts,
  });

  @override
  List<Object?> get props => [name, username, email, posts];
}

class PostSummaryEntity extends Equatable {
  final String title;
  final String body;

  const PostSummaryEntity({required this.title, required this.body});

  @override
  List<Object?> get props => [title, body];
}