import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyThemes {

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      centerTitle: true,
      iconTheme: IconThemeData(
          color: Colors.black
      ),
      titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
      )
    ),
    cardTheme: CardTheme(
      elevation: 1,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))
      )
    ),
    snackBarTheme: SnackBarThemeData(
      contentTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600
      ),
      behavior: SnackBarBehavior.floating,
      elevation: 10,
      backgroundColor: Colors.deepPurpleAccent,
    )
  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: ColorScheme.dark(),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.black
        )
    ),
    cardTheme: CardTheme(
      elevation: 1,
      color: Colors.black87,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))
      )
    ),
    snackBarTheme: SnackBarThemeData(
      contentTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600
      ),
      behavior: SnackBarBehavior.floating,
      elevation: 10,
      backgroundColor: Colors.deepPurpleAccent,
    )
  );

}