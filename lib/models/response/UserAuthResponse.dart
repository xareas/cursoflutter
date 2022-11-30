class UserAuthResponse {
  late int userid;
  late String username;
  late String name;
  late String lastname;
  late String token;

  UserAuthResponse({
      required this.userid,
      required this.username,
      required this.name,
      required this.lastname,
      required this.token,});

    UserAuthResponse.fromJson(dynamic json) {
    userid = json['userid'] ?? 0;
    username = json['username'] ?? "";
    name = json['name'] ?? "";
    lastname = json['lastname'] ?? "";
    token = json['token'] ?? "";
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userid'] = userid;
    map['username'] = username;
    map['name'] = name;
    map['lastname'] = lastname;
    map['token'] = token;
    return map;
  }

}