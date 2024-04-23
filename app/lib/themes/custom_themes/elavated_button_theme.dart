import 'package:app/const/constant.dart';
import 'package:flutter/material.dart';

class TElavatedButtonTheme {
  TElavatedButtonTheme._();

  static ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: white,
      backgroundColor: primaryAccentColor,
      disabledBackgroundColor: grey,
      disabledForegroundColor: grey,
      side: const BorderSide(color: primaryAccentColor),
      textStyle: const TextStyle(
        fontSize: 16,
        color: white,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(vertical: 18),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

  static ElevatedButtonThemeData darkElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: white,
      backgroundColor: primaryAccentColor,
      disabledBackgroundColor: grey,
      disabledForegroundColor: grey,
      side: const BorderSide(color: primaryAccentColor),
      textStyle: const TextStyle(
        fontSize: 16,
        color: black,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(vertical: 18),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}
