import 'package:dio/dio.dart';
import 'infrastructure.dart';
import 'package:makers_wallet/routes/Endpoints.dart';
class ApiClient {

   ApiClient._internal();
   static final ApiClient _singleton = ApiClient._internal();
   static ApiClient get singleton => _singleton;

  // factory ApiClient() => _singleton;

  final dio = createDio();

   static Dio createDio() {
    var dio = Dio(BaseOptions(
      baseUrl: Endpoints.baseUrl,
      receiveTimeout: Endpoints.receiveTimeout, // 15 seconds
      connectTimeout: Endpoints.connectionTimeout,
      sendTimeout: Endpoints.sendTimeout,
    ));

    dio.interceptors.addAll({
      AppInterceptors(dio),
    });

    return dio;
  }
}