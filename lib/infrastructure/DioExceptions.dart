import 'package:dio/dio.dart';

class DioExceptions implements Exception {
  late String message;

  DioExceptions.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = "Se cancelo la solicitud del Servidor al API";
        break;
      case DioErrorType.connectTimeout:
        message = "Connection timeout en el Servidor API";
        break;
      case DioErrorType.receiveTimeout:
        message = "Tiempo de espera agotado en la conexcion con el servidor API";
        break;
      case DioErrorType.response:
        message = _handleError(
          dioError.response?.statusCode,
          dioError.response?.data,
        );
        break;
      case DioErrorType.sendTimeout:
        message = "Se vencio el tiempo de espera en la conexcion con el API";
        break;
      case DioErrorType.other:
        if (dioError.message.contains("SocketException")) {
          message = 'No hay Internet';
          break;
        }
        message = "Se produjo un error inesperado";
        break;
      default:
        message = "Algo fue incorrecto, se produjo un error";
        break;
    }
  }

  String _handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return '400-Bad request';
      case 401:
        return '401-Unauthorized';
      case 403:
        return '403-Forbidden';
      case 404:
        return error['message'];
      case 500:
        return '500-Internal server error';
      case 502:
        return '502-Bad gateway';
      default:
        return 'Oops algo salio mal';
    }
  }

  @override
  String toString() => message;
}