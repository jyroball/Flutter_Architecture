import 'package:project2/domain/entities/users/address_entity.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:project2/domain/entities/users/geo_entity.dart';

part 'address_model.g.dart';

@JsonSerializable()
class AddressModel extends AddressEntity {
  const AddressModel({
    String? street,
    String? suite,
    String? city,
    String? zipcode,
    GeoEntity? geo,
  }) : super(
          street: street,
          suite: suite,
          city: city,
          zipcode: zipcode,
          geo: geo,
        );

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AddressModelToJson(this);

  @override
  List<Object?> get props => [
        street,
        suite,
        city,
        zipcode,
        geo,
      ];
}