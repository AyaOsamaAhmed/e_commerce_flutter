import 'package:flutter/material.dart';

import '../../../generated/assets.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = "splash";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Image.asset(Assets.logo),
      ),
    );
  }
}
