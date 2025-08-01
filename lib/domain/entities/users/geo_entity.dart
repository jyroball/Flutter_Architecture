import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'geo_entity.g.dart';

@JsonSerializable()
class GeoEntity extends Equatable {
  @JsonKey(name: 'lat')
  final String? lat;

  @JsonKey(name: 'lng')
  final String? lng;

  const GeoEntity({this.lat, this.lng});

  @override
  List<Object?> get props => [lat, lng];

  factory GeoEntity.fromJson(Map<String, dynamic> json) =>
      _$GeoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GeoEntityToJson(this);
}
