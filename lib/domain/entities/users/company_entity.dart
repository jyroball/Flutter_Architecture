import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'company_entity.g.dart';

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
