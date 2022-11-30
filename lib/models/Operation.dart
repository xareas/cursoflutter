import 'package:json_annotation/json_annotation.dart';
import 'package:makers_wallet/models/entitybase.dart';
part 'Operation.g.dart';

@JsonSerializable()
class Operation implements Entity {

  late int? operationid;
  final String name;
  Operation({this.operationid,required this.name});

  @override
  Map<String, dynamic> toJson() => _$OperationToJson(this);

  factory Operation.fromJson(Map<String, dynamic> json) => _$OperationFromJson(json);

}