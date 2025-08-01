// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
