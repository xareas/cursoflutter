import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/components/Logs.dart';
import 'StorageService.dart';
import 'infrastructure.dart';

class AppInterceptors extends Interceptor {
  final Dio dio;

  AppInterceptors(this.dio);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {

    final storage = Get.find<StorageService>();
    await StorageService().init();
    var accessToken = storage.token;
    if (storage.isExpiredToken()) {
      //renovarlo token aca. se deja planteado para implementarlo a futuro
    }
    options.headers['Authorization'] = 'Bearer $accessToken';
    return handler.next(options);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    //implementar a futuro manejo centralizado de errores
    // de momento solo se deja planteado, se podria conectar con un
    //servicio de log de errores y registrarlos ahi
    Logs.log.e(err.message,err);
    showError("Error: ${err.message}");
    return handler.next(err);
  }


  void showError(String msg) {
    Get.snackbar("Error API", msg,
        icon: const Icon(
          Icons.error_rounded,
          color: Colors.white,
        ),
        backgroundColor: Colors.redAccent,
        colorText: Colors.white);
  }

}
