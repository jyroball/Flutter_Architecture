import 'package:project2/core/util/data_state.dart';
import 'package:project2/data/data_source/posts/posts_service.dart';
import 'package:project2/data/model/posts/posts_model.dart';
import 'package:project2/domain/entities/posts/posts_entity.dart';
import 'package:project2/domain/repository/posts/posts_repository.dart';

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';

class PostsRepositoryImpl implements PostsRepository {
  final PostsService _postsService;
  PostsRepositoryImpl(
    this._postsService,
  );

  @override
  Future<DataState<List<PostsEntity>>> getPosts() async {
    try {
      final HttpResponse<List<PostsModel>> httpResponse = await _postsService
        .getPosts();

      if(httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
          DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions
          ) 
        );
      }
    } on DioException catch(e) {
      return DataFailed(e);
    }
  }

}