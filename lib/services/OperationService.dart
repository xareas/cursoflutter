import 'package:dio/dio.dart';
import 'package:makers_wallet/infrastructure/infrastructure.dart';
import 'package:makers_wallet/models/Operation.dart';
import 'package:makers_wallet/services/BaseService.dart';
import 'package:makers_wallet/services/CrudService.dart';
import 'package:makers_wallet/routes/Endpoints.dart';
class OperationService extends BaseService implements ReadOnlyService<Operation>{


  OperationService();

  @override
  Future<List<Operation>?> getAll() async {
    try {

      var response = await http.get(Endpoints.operationUrl);
      final operations = (response.data as List).map((e) => Operation.fromJson(e)).toList();
      return operations;

    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  @override
  Future<Operation?> getbyId(int id) async {
    try {
      var response = await http.get("${Endpoints.operationUrl}/$id");
      var operation = Operation.fromJson(response.data);
      return operation;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }



}