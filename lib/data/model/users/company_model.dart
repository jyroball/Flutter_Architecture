import 'package:project2/domain/entities/users/company_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'company_model.g.dart';

@JsonSerializable()
class CompanyModel extends CompanyEntity {
  const CompanyModel({
    String? name,
    String? catchPhrase,
    String? bs,
  }) : super(
          name: name,
          catchPhrase: catchPhrase,
          bs: bs,
        );

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CompanyModelToJson(this);

  @override
  List<Object?> get props => [
        name,
        catchPhrase,
        bs,
      ];
}