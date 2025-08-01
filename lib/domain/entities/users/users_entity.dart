import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'users_entity.g.dart';

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

@JsonSerializable()
class CompanyEntity extends Equatable {
  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'catchPhrase')
  final String? catchPhrase;

  @JsonKey(name: 'bs')
  final String? bs;

  const CompanyEntity({this.name, this.catchPhrase, this.bs});

  @override
  List<Object?> get props => [name, catchPhrase, bs];

  factory CompanyEntity.fromJson(Map<String, dynamic> json) =>
      _$CompanyEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyEntityToJson(this);
}

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

  const AddressEntity({this.street, this.suite, this.city, this.zipcode, this.geo});

  @override
  List<Object?> get props => [street, suite, city, zipcode, geo];

  factory AddressEntity.fromJson(Map<String, dynamic> json) =>
      _$AddressEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AddressEntityToJson(this);
}

@JsonSerializable()
class UsersEntity extends Equatable {
  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'username')
  final String? username;

  @JsonKey(name: 'email')
  final String? email;

  @JsonKey(name: 'address')
  final AddressEntity? address;

  @JsonKey(name: 'phone')
  final String? phone;

  @JsonKey(name: 'website')
  final String? website;

  @JsonKey(name: 'company')
  final CompanyEntity? company;

  const UsersEntity({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        username,
        email,
        address,
        phone,
        website,
        company,
      ];

  factory UsersEntity.fromJson(Map<String, dynamic> json) =>
      _$UsersEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UsersEntityToJson(this);
}