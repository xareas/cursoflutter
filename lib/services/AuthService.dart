import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/infrastructure/infrastructure.dart';
import 'package:makers_wallet/models/User.dart';
import 'package:makers_wallet/models/request/UserTokenRequest.dart';
import 'package:makers_wallet/models/response/UserAuthResponse.dart';
import 'package:makers_wallet/routes/Endpoints.dart';
import 'package:makers_wallet/services/BaseService.dart';

class AuthService extends BaseService {

  AuthService();

  Future<UserAuthResponse?> login(UserTokenRequest user) async {
    try {

      var response = await http.post(Endpoints.loginUrl, data: user);
      if(response.statusCode!=200) return null;
      var userResponse = UserAuthResponse.fromJson(response.data);
      Get.find<StorageService>().saveProfile(userResponse);
      return userResponse;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      //throw errorMessage;
      return null;
    }
  }

  Future<void> createUser(User user) async {
    try {
      await http.post(Endpoints.createUserUrl, data: user);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  
  
}

//beyond