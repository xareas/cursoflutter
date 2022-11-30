import 'package:flutter/material.dart';

class ColorsMakers {

 ColorsMakers._();

 static const primary = Color.fromRGBO(46,44,120,1);
 static const darkPrimary = Color.fromRGBO(48,63,159,1);
 static const accentColor = Color.fromRGBO(132,168,45,1);
 static const ligthPrimary = Color.fromRGBO(209,196,233,1);
 static const textIcons = Color.fromRGBO(255,255,255,1);
 static const primaryText = Color.fromRGBO(33,33,33,1);
 static const secondaryText = Color.fromRGBO(117,117,117,1);
 static const divideColor = Color.fromRGBO(189,189,189,1);
 static const colorButtonIcon = Color.fromRGBO(30,30,88,1);


 static const skyblue = Color.fromARGB(255, 56, 189, 232);
 static const pink = Color.fromARGB(255, 219, 52, 132);

//Se convierte el color primario a material Color
 static const Map<int, Color> colorPrimaryCodes =  {
  50:  Color.fromRGBO(46,44,120, .1),
  100: Color.fromRGBO(46,44,120, .2),
  200: Color.fromRGBO(46,44,120, .3),
  300: Color.fromRGBO(46,44,120, .4),
  400: Color.fromRGBO(46,44,120, .5),
  500: Color.fromRGBO(46,44,120, .6),
  600: Color.fromRGBO(46,44,120, .7),
  700: Color.fromRGBO(46,44,120, .8),
  800: Color.fromRGBO(46,44,120, .9),
  900: Color.fromRGBO(46,44,120, 1),
 };
 static const materialPrimary = MaterialColor(0xFF2E2C78, colorPrimaryCodes);

//Se convierte el color primario a material Color
 static const Map<int, Color> colorDarkPrimaryCodes =  {
  50:  Color.fromRGBO(48,63,159, .1),
  100: Color.fromRGBO(48,63,159, .2),
  200: Color.fromRGBO(48,63,159, .3),
  300: Color.fromRGBO(48,63,159, .4),
  400: Color.fromRGBO(48,63,159, .5),
  500: Color.fromRGBO(48,63,159, .6),
  600: Color.fromRGBO(48,63,159, .7),
  700: Color.fromRGBO(48,63,159, .8),
  800: Color.fromRGBO(48,63,159, .9),
  900: Color.fromRGBO(48,63,159, 1),
 };
 static const materialDarkPrimary = MaterialColor(0xFF303F9F, colorDarkPrimaryCodes);


}