import 'package:flutter/material.dart';
import 'package:makers_wallet/themes/ColorsMakers.dart';
import 'package:sizer/sizer.dart';

abstract class MakersTheme {

  //Theme Oscuro
  static TextTheme lightTextTheme = const TextTheme(

    bodyText1: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headline1: TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline2: TextStyle(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headline3: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: ColorsMakers.skyblue,
    ),
    headline6: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
 );

  static InputDecorationTheme inputDecoration =  InputDecorationTheme(
    contentPadding:  EdgeInsets.all(12.sp),

    labelStyle:  TextStyle(
      color: Colors.black,
      fontSize: 2.sp,
      fontWeight: FontWeight.w400,
    ),
    hintStyle:  TextStyle(
      color: Colors.grey,
      fontSize: 12.sp,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
      borderRadius: BorderRadius.circular(10.0),
    ),
    floatingLabelStyle:const TextStyle(
      color: Colors.black,
      fontSize: 18.0,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.black, width: 1.5),
      borderRadius: BorderRadius.circular(10.0),
    ),
  );

  static ButtonThemeData buttonTheme= ButtonThemeData(
    padding: const EdgeInsets.all(2.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
     buttonColor: ColorsMakers.secondaryText
   );
  static ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ColorsMakers.darkPrimary, // background (button) color
      foregroundColor: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
    ),
  );
  //Theme Ligth
  static TextTheme darkTextTheme = const TextTheme(
    bodyText1: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headline1: TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline2: TextStyle(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headline3:TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headline6: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );

  static ThemeData light() {

    return ThemeData(
      primarySwatch: ColorsMakers.materialDarkPrimary,
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          return Colors.black;
        }),
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: lightTextTheme,
      inputDecorationTheme: inputDecoration,
      buttonTheme: buttonTheme,
      elevatedButtonTheme: elevatedButtonThemeData,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: darkTextTheme,
      inputDecorationTheme: inputDecoration,
      buttonTheme: buttonTheme,
      elevatedButtonTheme: elevatedButtonThemeData,
    );
  }
}
