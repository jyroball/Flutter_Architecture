import 'package:project2/data/data_source/users/users_service.dart';
import 'package:project2/data/data_source/posts/posts_service.dart';
import 'injection_container.dart';

class ServiceRegistry {
  void registerServices() {
    sl.registerSingleton<UsersService>(UsersService());
    sl.registerSingleton<PostsService>(PostsService());
  }
}
