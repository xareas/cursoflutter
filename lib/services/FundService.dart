import 'package:dio/dio.dart';
import 'package:makers_wallet/infrastructure/infrastructure.dart';
import 'package:makers_wallet/models/Fund.dart';
import 'package:makers_wallet/models/models.dart';
import 'package:makers_wallet/services/BaseService.dart';
import 'package:makers_wallet/services/CrudService.dart';
import 'package:makers_wallet/routes/Endpoints.dart';

class FundService extends BaseService implements ReadOnlyService<Fund> {
  FundService();

  @override
  Future<List<Fund>?> getAll() async {
    try {
      var response = await http.get(Endpoints.fundUrl);
      final funds =
          (response.data as List).map((e) => Fund.fromJson(e)).toList();
      return funds;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  @override
  Future<Fund?> getbyId(int id) async {
    try {
      var response = await http.get("${Endpoints.fundUrl}/$id");
      var fund = Fund.fromJson(response.data);
      return fund;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  Future<List<FundResum>?> getResumFundByUser(int userId) async {
    try {
      var response = await http.get("${Endpoints.fundUserUrl}/$userId");
      final funds =
          (response.data as List).map((e) => FundResum.fromJson(e)).toList();
      return funds;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }
}
