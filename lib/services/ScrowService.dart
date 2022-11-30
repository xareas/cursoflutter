import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/infrastructure/infrastructure.dart';
import 'package:makers_wallet/models/models.dart';
import 'package:makers_wallet/services/BaseService.dart';
import 'package:makers_wallet/services/services.dart';
import 'package:makers_wallet/routes/Endpoints.dart';

class ScrowService extends BaseService implements CrudService<Escrow> {

  ScrowService();

  @override
  Future<List<Escrow>> getAll() async {
    try {

      final userid = Get.find<StorageService>().userId;

      final response = await http.get("${Endpoints.scrowUrl}/$userid");
      final scrows = (response.data as List).map((e) => Escrow.fromJson(e)).toList();
      return scrows;

    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  @override
  Future<void> delete(int id) async {
    try {
      await http.post(Endpoints.scrowDeleteUrl, data: id);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  @override
  Future<void> createOrUpdate(Escrow entity) async {
    try {
      await http.post(Endpoints.scrowPostUrl, data: entity);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }



}
