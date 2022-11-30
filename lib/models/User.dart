import 'package:json_annotation/json_annotation.dart';
import 'package:makers_wallet/models/entitybase.dart';
part 'User.g.dart';

@JsonSerializable()
class User implements Entity {
 late int? userid;
 String name;
 String lastname;
 String username;
 String email;
 String password;


 User({
    this.userid,
    required this.name,
    required this.lastname,
    required this.username,
    required this.email,
    required this.password,
  });


 @override
 Map<String, dynamic> toJson() => _$UserToJson(this);
 factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

}