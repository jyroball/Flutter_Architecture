import 'package:equatable/equatable.dart';
import 'package:project2/domain/entities/userPosts/userPosts_entity.dart';

abstract class UserPostsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class UserPostsInitial extends UserPostsState {}

class UserPostsLoading extends UserPostsState {}

class UserPostsLoaded extends UserPostsState {
  final List<UserPostsEntity> userPosts;

  UserPostsLoaded(this.userPosts);

  @override
  List<Object?> get props => [userPosts];
}

class UserPostsError extends UserPostsState {
  final String message;

  UserPostsError(this.message);

  @override
  List<Object?> get props => [message];
}
