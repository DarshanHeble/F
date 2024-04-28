import 'package:app/screens/splash_screen.dart';
import 'package:app/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      // theme: ThemeData(
      //   scaffoldBackgroundColor: const Color(0xFF15131C),
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),

      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const SplashScreen(),
    );
  }
}
