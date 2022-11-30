import 'package:dio/dio.dart';
import 'package:makers_wallet/infrastructure/infrastructure.dart';
import 'package:makers_wallet/models/Bank.dart';
import 'package:makers_wallet/services/BaseService.dart';
import 'package:makers_wallet/services/CrudService.dart';
import 'package:makers_wallet/routes/Endpoints.dart';



class BankService extends BaseService implements ReadOnlyService<Bank> {

  BankService();

  @override
  Future<List<Bank>?> getAll() async {
    try {

      var response = await http.get(Endpoints.banksUrl);
      final banks =
          (response.data as List).map((e) => Bank.fromJson(e)).toList();

      return banks;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();

      throw errorMessage;
    }
  }

  @override
  Future<Bank?> getbyId(int id) async {
    try {
      var response = await http.get("${Endpoints.banksUrl}/$id");
      var bank = Bank.fromJson(response.data);
      return bank;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }


}
