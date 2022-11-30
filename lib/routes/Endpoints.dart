class Endpoints {
  Endpoints._();

  //"https://makerswallet.onrender.com";
  ////"http://localhost:5000";
  static const String baseUrl = "http://192.168.1.9:5000";
  //static const String baseUrl ="https://makerswallet.onrender.com";

  static const int receiveTimeout = 15000;
  static const int connectionTimeout = 15000;
  static const int sendTimeout = 15000;
  static const String banksUrl = '/banks';
  static const String fundUrl = '/funds';
  static const String fundUserUrl = '/funds/getTotalByUser/';
  static const String operationUrl = '/operations';
  static const String scrowUrl = '/Escrow';
  static const String scrowPostUrl = '/Escrow/createOrUpdate';
  static const String scrowDeleteUrl = '/Escrow/delete';

  static const String loginUrl = '/user/login';
  static const String createUserUrl = '/user/register';
}
