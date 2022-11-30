// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Fund.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fund _$FundFromJson(Map<String, dynamic> json) => Fund(
      fundid: json['fundid'] as int?,
      name: json['name'] as String,
    );

Map<String, dynamic> _$FundToJson(Fund instance) => <String, dynamic>{
      'fundid': instance.fundid,
      'name': instance.name,
    };
