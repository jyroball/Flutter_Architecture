import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'address_entity.dart';
import 'company_entity.dart';

part 'users_entity.g.dart';

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
