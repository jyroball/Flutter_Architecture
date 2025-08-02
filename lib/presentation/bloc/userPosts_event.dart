import 'package:equatable/equatable.dart';

abstract class UserPostsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetchUserPosts extends UserPostsEvent {}
