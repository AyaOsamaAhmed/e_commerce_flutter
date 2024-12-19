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
           child:  Center(child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Image.asset(Assets.logo),

               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: SizedBox(
                   width: double.infinity, // <-- match_parent
                   height: 50, // <-- match-parent
                   child:  ElevatedButton(   // MaterialButton
                     onPressed: () =>{Navigator.pushNamed(context,SignupScreen.routeName)}
                     , child: Text('Start Now')
                     ,style: ElevatedButton.styleFrom( foregroundColor: Colors.white,
                       backgroundColor: Colors.blue , textStyle: TextStyle(fontSize: 24) ) ,
                   ),
                 ),
               )
             ],
           )),

          onTap: ()=> Navigator.pushNamed(context,SignupScreen.routeName),
        )
      ),
    );
  }
}
