import 'package:project2/domain/entities/users/geo_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'geo_model.g.dart';

@JsonSerializable()
class GeoModel extends GeoEntity {
  const GeoModel({
    String? lat,
    String? lng,
  }) : super(
          lat: lat,
          lng: lng,
        );

  factory GeoModel.fromJson(Map<String, dynamic> json) =>
      _$GeoModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GeoModelToJson(this);

  @override
  List<Object?> get props => [
        lat,
        lng,
      ];
}