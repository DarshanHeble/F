import "package:app/const/constant.dart";
import "package:app/themes/custom_themes/text_theme.dart";
import "package:flutter/material.dart";

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "",
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: white,
    textTheme: TTextTheme.lightTextTheme,

    // elevatedButtonTheme: ElevatedButtonThemeData
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "",
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: black,
    textTheme: TTextTheme.darkTextTheme,
  );
}
