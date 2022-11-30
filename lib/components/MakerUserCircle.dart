import 'package:flutter/material.dart';
import 'package:makers_wallet/themes/MakersTheme.dart';

class MakerUserCircle extends StatelessWidget {
  final String? userName;

  const MakerUserCircle({Key? key, this.userName = 'Invitado'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/images/user.png"),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            "Hola,\n$userName",
            style: MakersTheme.darkTextTheme.headline2,
          )
        ],
      ),
    );
  }
}
