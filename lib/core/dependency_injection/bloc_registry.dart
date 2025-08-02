import 'package:project2/presentation/bloc/userPosts_bloc.dart';
import 'package:project2/domain/use_case/userPosts/userPosts_usecase.dart';
import 'injection_container.dart';

class BlocRegistry {
  void registerBlocs() {
    sl.registerFactory<UserPostsBloc>(
      () => UserPostsBloc(sl<GetUserPostsUseCase>()),
    );
  }
}
