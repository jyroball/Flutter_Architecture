import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:project2/core/config/endpoints.dart';
import 'package:project2/core/util/dio_instance.dart';
import 'package:project2/data/model/posts/posts_model.dart';

part 'posts_service.g.dart';

@RestApi(baseUrl: Endpoints.baseUrl)
abstract class PostsService {
  factory PostsService({String? baseUrl}) {
    return _PostsService(
      DioInstance.init(),
      baseUrl: baseUrl ?? Endpoints.baseUrl,
    );
  }

  // Get all posts
  @GET(Endpoints.posts)
  Future<HttpResponse<List<PostsModel>>> getPosts();

  // Get single post by ID
  @GET("${Endpoints.posts}/{id}")
  Future<HttpResponse<PostsModel>> getPostById(@Path("id") int id);

  // Get all post from user by UserID
  @GET("${Endpoints.posts}/{userId}")
  Future<HttpResponse<PostsModel>> getPostByUserId(@Path("userId") int id);
}
