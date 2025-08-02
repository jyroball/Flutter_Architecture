import 'package:project2/domain/entities/posts/posts_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'posts_model.g.dart';

@JsonSerializable()
class PostsModel extends PostsEntity {
  const PostsModel({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) : super(
          userId: userId,
          id: id,
          title: title,
          body: body,
        );

  factory PostsModel.fromJson(Map<String, dynamic> json) =>
      _$PostsModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PostsModelToJson(this);

  @override
  List<Object?> get props => [
        userId,
        id,
        title,
        body,
      ];
}