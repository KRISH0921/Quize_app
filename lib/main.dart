import 'package:flutter/material.dart';
import 'package:quize/home_screen/home_screen.dart';
import 'package:quize/result_screen/result_screen.dart';
import 'package:quize/splash_screen/splash_screen.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/":(context) => SplashScreen(),
        "home":(context) => HomeScreen(),
        "result":(context) => ResultScreen(),
      },
    );
  }
}

