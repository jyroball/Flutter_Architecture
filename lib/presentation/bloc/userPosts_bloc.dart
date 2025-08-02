import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/domain/use_case/userPosts/userPosts_usecase.dart';
import 'package:project2/core/util/data_state.dart';
import 'package:project2/domain/entities/userPosts/userPosts_entity.dart';
import 'userPosts_event.dart';
import 'userPosts_state.dart';

class UserPostsBloc extends Bloc<UserPostsEvent, UserPostsState> {
  final GetUserPostsUseCase getUserPostsUseCase;

  UserPostsBloc(this.getUserPostsUseCase) : super(UserPostsInitial()) {
    on<FetchUserPosts>(_onFetchUserPosts);
  }

  Future<void> _onFetchUserPosts(
      FetchUserPosts event, Emitter<UserPostsState> emit) async {
    emit(UserPostsLoading());

    final result = await getUserPostsUseCase();

    if (result is DataSuccess<List<UserPostsEntity>>) {
      emit(UserPostsLoaded(result.data ?? []));
    } else if (result is DataFailed<List<UserPostsEntity>>) {
      emit(UserPostsError(result.error?.message ?? 'Unknown error'));
    }
  }
}
