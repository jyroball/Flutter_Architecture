// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoEntity _$GeoEntityFromJson(Map<String, dynamic> json) =>
    GeoEntity(lat: json['lat'] as String?, lng: json['lng'] as String?);

Map<String, dynamic> _$GeoEntityToJson(GeoEntity instance) => <String, dynamic>{
  'lat': instance.lat,
  'lng': instance.lng,
};

CompanyEntity _$CompanyEntityFromJson(Map<String, dynamic> json) =>
    CompanyEntity(
      name: json['name'] as String?,
      catchPhrase: json['catchPhrase'] as String?,
      bs: json['bs'] as String?,
    );

Map<String, dynamic> _$CompanyEntityToJson(CompanyEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'catchPhrase': instance.catchPhrase,
      'bs': instance.bs,
    };

AddressEntity _$AddressEntityFromJson(Map<String, dynamic> json) =>
    AddressEntity(
      street: json['street'] as String?,
      suite: json['suite'] as String?,
      city: json['city'] as String?,
      zipcode: json['zipcode'] as String?,
      geo: json['geo'] == null
          ? null
          : GeoEntity.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressEntityToJson(AddressEntity instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geo,
    };

UsersEntity _$UsersEntityFromJson(Map<String, dynamic> json) => UsersEntity(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  username: json['username'] as String?,
  email: json['email'] as String?,
  address: json['address'] == null
      ? null
      : AddressEntity.fromJson(json['address'] as Map<String, dynamic>),
  phone: json['phone'] as String?,
  website: json['website'] as String?,
  company: json['company'] == null
      ? null
      : CompanyEntity.fromJson(json['company'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UsersEntityToJson(UsersEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'address': instance.address,
      'phone': instance.phone,
      'website': instance.website,
      'company': instance.company,
    };
