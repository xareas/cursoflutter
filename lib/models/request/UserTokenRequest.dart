
class UserTokenRequest {

 late String username;
 late String password;

 UserTokenRequest({
     required this.username,
     required this.password,});

  UserTokenRequest.fromJson(dynamic json) {
    username = json['username'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = username;
    map['password'] = password;
    return map;
  }

}