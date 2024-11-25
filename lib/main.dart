import 'package:flutter/material.dart';
import 'package:jewellery_ecomm_app/view/splash_screen/splash_screen.dart';

void main(){
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white
        )
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}