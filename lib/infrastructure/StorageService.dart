import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:makers_wallet/models/models.dart';

class StorageService extends GetxService {

   static const _tokenKey = 'bearer';
   static const _userId = 'userid';
   static const _username = 'username';

   String? token;
   int? userId;
   String? userName;

  Future<StorageService> init() async {
    await GetStorage.init();
    token =  GetStorage().read(_tokenKey) ;
    userId=  GetStorage().read(_userId) ;
    userName= GetStorage().read(_username) ;
    return this;
  }

    void saveToken(String token){
     _write(_tokenKey, token);
    }

    bool isExpiredToken() {
     if(token!= null) {
       bool isExpired = Jwt.isExpired(token??"");
       return isExpired;
     }
     return true;
   }

    void saveProfile(UserAuthResponse user)  {
     _write(_tokenKey, user.token);
     _write(_username, user.name);
     _write(_userId, user.userid);
     token = user.token;
     userName = user.username;
     userId = user.userid;
   }

   void _write(String key, dynamic value) {
     GetStorage().write(key, value);
   }

}
