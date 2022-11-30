import 'package:json_annotation/json_annotation.dart';
import 'package:makers_wallet/models/entitybase.dart';
part 'Payment.g.dart';

class Payment implements Entity {
  String account = "";
  String bankName = "";
  double value = 0.0;
  Payment({required this.account, required this.bankName, required this.value});

  @override
  Map<String, dynamic> toJson() => _PaymentToJson(this);
}
