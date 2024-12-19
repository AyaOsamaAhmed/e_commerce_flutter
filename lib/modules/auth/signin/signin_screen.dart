import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import '../../../generated/assets.dart';
import '../signup/signup_controller.dart';
import 'package:flutter_svg/svg.dart';

class SigninScreen extends StatefulWidget {
  static const routeName = "signin";

  const SigninScreen({super.key});

  @override
  State createState() => _SigninScreenState();
}

class _SigninScreenState extends StateMVC<SigninScreen> {

  late SigninController  con ;

  _SigninScreenState(): super(SigninController()){
    con =SigninController();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.signin),
                Padding(padding: new EdgeInsets.all(22.0)),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'enter Email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder()
                  ),
            
                  autocorrect: true,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  controller: con.email,
            
                ),
            
                Padding(padding: new EdgeInsets.all(5.0)),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'enter Password',
                      prefixIcon: Icon(Icons.key),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder()
                  ),
                  autocorrect: true,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  controller: con.password,
                ),
            
                Padding(padding: new EdgeInsets.all(5.0)),
            
                SizedBox(
                  width: double.infinity, // <-- match_parent
                  height: 50, // <-- match-parent
                  child:  ElevatedButton(   // MaterialButton
                    onPressed: () =>(){


                    }, child: Text('Sign In')
                    ,style: ElevatedButton.styleFrom( foregroundColor: Colors.white,
                      backgroundColor: Colors.blue , textStyle: TextStyle(fontSize: 24) ) ,
                  ),
                )
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
