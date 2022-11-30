import 'package:json_annotation/json_annotation.dart';
import 'package:makers_wallet/models/entitybase.dart';

part 'Bank.g.dart';

@JsonSerializable()
class Bank implements Entity {

  late int? bankid;
  final String name;

  Bank({this.bankid,required this.name});

  factory Bank.fromJson(Map<String, dynamic> json) => _$BankFromJson(json);
  @override
  Map<String, dynamic> toJson()  => _$BankToJson(this);




}