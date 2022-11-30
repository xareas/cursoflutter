// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      userid: json['userid'] as int?,
      name: json['name'] as String,
      lastname: json['lastname'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'userid': instance.userid,
      'name': instance.name,
      'lastname': instance.lastname,
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
    };
