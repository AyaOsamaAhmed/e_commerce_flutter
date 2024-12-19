import 'package:e_commerce_flutter/modules/auth/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import '../../../generated/assets.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = "splash";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: GestureDetector(
           child:  Center(child: Image.asset(Assets.logo)),
          onTap: ()=> Navigator.pushNamed(context,SignupScreen.routeName),
        )
      ),
    );
  }
}
