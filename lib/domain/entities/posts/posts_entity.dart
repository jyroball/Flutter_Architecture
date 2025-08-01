import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'posts_entity.g.dart';

@JsonSerializable()
class PostsEntity extends Equatable {
  @JsonKey(name: 'userId')
  final int? userId;

  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'body')
  final String? body;

  const PostsEntity({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  @override
  List<Object?> get props => [userId, id, title, body];

  factory PostsEntity.fromJson(Map<String, dynamic> json) =>
      _$PostsEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PostsEntityToJson(this);
}
