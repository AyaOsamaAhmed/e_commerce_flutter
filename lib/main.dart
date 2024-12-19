import 'package:e_commerce_flutter/modules/auth/signup/signup_screen.dart';
import 'package:flutter/material.dart';

import 'modules/splash/page/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName :(context) => SplashScreen() ,
        SignupScreen.routeName :(context) => SignupScreen() ,


      }
      );
  }
}
