part of 'Payment.dart';

Map<String, dynamic> _PaymentToJson(Payment p) => <String, dynamic>{
      "account": p.account,
      "bankName": p.bankName,
      "value": p.value
    };
Payment _PaymentFromJson(Map<String, dynamic> map) => Payment(
    account: map["account"], bankName: map["bankName"], value: map["value"]);
