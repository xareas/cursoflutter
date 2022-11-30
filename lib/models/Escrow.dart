import 'package:makers_wallet/models/entitybase.dart';

//Para generar metodos de serializacion ejecutar
//marcar la clase con el atributo @JsonSerializable()
// flutter pub run build_runner build

class Escrow implements Entity {
  late int? escrowid;
  final String name;
  final double value;
  final DateTime date;
  final int operationid;
  final int fundid;
  final int appuserid;

  Escrow(
      {this.escrowid,
      required this.name,
      required this.value,
      required this.date,
      required this.operationid,
      required this.fundid,
      required this.appuserid});

  factory Escrow.fromJson(Map<String, dynamic> json) => Escrow(
        escrowid: json['escrowid'] as int?,
        name: json['name'] as String,
        value: double.parse(json['value']),
        date: DateTime.parse(json['date'] as String),
        operationid: json['operationid'] as int,
        fundid: json['fundid'] as int,
        appuserid: json['appuserid'] as int,
      );

  Map<String, dynamic> toJson() => _$EscrowToJson(this);

  Escrow copyWith({
    int? escrowId,
    String? name,
    double? value,
    DateTime? date,
    int? operationId,
    int? fundId,
    int? appUserId,
  }) {
    return Escrow(
        name: name ?? this.name,
        value: value ?? this.value,
        date: date ?? this.date,
        operationid: operationid ?? this.operationid,
        fundid: fundid ?? this.fundid,
        appuserid: appuserid ?? this.appuserid);
  }

  Map<String, dynamic> _$EscrowToJson(Escrow instance) => <String, dynamic>{
        'escrowid': instance.escrowid,
        'name': instance.name,
        'value': instance.value,
        'date': instance.date.toIso8601String(),
        'operationid': instance.operationid,
        'fundid': instance.fundid,
        'appuserid': instance.appuserid,
      };
}
