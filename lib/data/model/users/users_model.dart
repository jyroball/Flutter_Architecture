import 'package:project2/domain/entities/users/users_entity.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:project2/domain/entities/users/address_entity.dart';
import 'package:project2/domain/entities/users/company_entity.dart';

part 'users_model.g.dart';

@JsonSerializable()
class UsersModel extends UsersEntity {
  const UsersModel({
    int? id,
    String? name,
    String? username,
    String? email,
    AddressEntity? address,
    String? phone,
    String? website,
    CompanyEntity? company,
  }) : super(
          id: id,
          name: name,
          username: username,
          email: email,
          address: address,
          phone: phone,
          website: website,
          company: company,
        );

  factory UsersModel.fromJson(Map<String, dynamic> json) =>
      _$UsersModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UsersModelToJson(this);

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
}