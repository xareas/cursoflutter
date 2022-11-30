import 'package:flutter/material.dart';
import 'package:makers_wallet/infrastructure/ApiClient.dart';
import 'package:makers_wallet/models/User.dart';
import 'package:makers_wallet/models/request/UserTokenRequest.dart';
import 'package:makers_wallet/services/services.dart';
import '../components/LoginPainter.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget   {
  const LoginScreen({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: LoginPainter(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            // ignore: unnecessary_const
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.phone),
                    labelText: 'Phone Number',
                    hintText: 'Enter your phone number'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
              child: TextField(
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: InputDecoration(
                    icon: Icon(Icons.password),
                    labelText: 'Password',
                    hintText: 'Enter secure password',
                    ),
              ),
            ),
            ElevatedButton(             
             child: Text("Get Token"),
              onPressed: () async {
                 var service = AuthService();
                 var response = await service.login(UserTokenRequest(username: "makers", password: "makers"));
                 print("Token: ${response?.token}");
                 Get.snackbar("Token Wallet", "Token: ${response?.token}");
                 //service.dispose();
              },
             ),
            ElevatedButton(onPressed: () async {
              //var token = await StorageToken.getToken();
              //DioClient.bearerToken(token)
              var service = AuthService();
                 await service.createUser(User(name: "Usuario Prueba2",
                  lastname: "Prueba2",
                  username: "prueba2",
                  email: "prueba2@email.com",password: "prueba2"));


            }, child: Text("Crear Usuario")),
            ElevatedButton(onPressed: () async {
              //var token = await StorageToken.getToken();
              //DioClient.bearerToken(token)
              var service = BankService();
              var datos = await service.getbyId(1);
               print(datos);

            }, child: Text("Bancos")),

            ElevatedButton(onPressed: () async {
              var service = ScrowService();
              var datos = await service.getAll();
              print(datos);

            }, child: Text("Escrow")),
            ElevatedButton(onPressed: () async {
              ApiClient.singleton.dio.close();
              print("CONEXCION CERRADA");

            }, child: Text("Cerra conexcion"))
          ],

        ),
      ),
    );
  }

}
