import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'geo_entity.dart';

part 'address_entity.g.dart';

@JsonSerializable()
class AddressEntity extends Equatable {
  @JsonKey(name: 'street')
  final String? street;

  @JsonKey(name: 'suite')
  final String? suite;

  @JsonKey(name: 'city')
  final String? city;

  @JsonKey(name: 'zipcode')
  final String? zipcode;

  @JsonKey(name: 'geo')
  final GeoEntity? geo;

  const AddressEntity({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });

  @override
  List<Object?> get props => [street, suite, city, zipcode, geo];

  factory AddressEntity.fromJson(Map<String, dynamic> json) =>
      _$AddressEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AddressEntityToJson(this);
}
