
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/infrastructure/ApiClient.dart';
import 'package:makers_wallet/infrastructure/StorageService.dart';

abstract class BaseService {

  String get userName  {
    final storage = Get.find<StorageService>();
    return storage.userName ?? "Invitado";
  }

  int get userId  {
    final storage = Get.find<StorageService>();
    return storage.userId ?? 0;
  }

    Dio get http {
      return ApiClient.singleton.dio;
   }

}