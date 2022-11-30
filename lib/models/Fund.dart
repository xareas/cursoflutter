import 'package:json_annotation/json_annotation.dart';
import 'package:makers_wallet/models/entitybase.dart';
part 'Fund.g.dart';

@JsonSerializable()
class Fund implements Entity{

  late int? fundid;
  final String name;

  Fund({this.fundid, required this.name});

  factory Fund.fromJson(Map<String, dynamic> json) => _$FundFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FundToJson(this);




}