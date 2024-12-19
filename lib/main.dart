import 'package:e_commerce_flutter/modules/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'modules/auth/signin/signin_screen.dart';
import 'modules/auth/signup/signup_screen.dart';
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
      initialRoute: SigninScreen.routeName,
      routes: {
        SplashScreen.routeName :(context) => SplashScreen() ,
        SignupScreen.routeName :(context) => SignupScreen() ,
        SigninScreen.routeName :(context) => SigninScreen() ,
        HomeScreen.routeName :(context) => HomeScreen() ,


      }
      );
  }
}
