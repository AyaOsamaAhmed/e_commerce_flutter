import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import '../../../generated/assets.dart';
import 'signup_controller.dart';

class SignupScreen extends StatefulWidget {
  static const routeName = "signin";

  const SignupScreen({super.key});

  @override
  State createState() => _SigninScreenState();
}

class _SigninScreenState extends StateMVC<SignupScreen> {

  late SigninController  con ;

  _SigninScreenState(): super(SigninController()){
    con =SigninController();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assets.signup),
              Padding(padding: new EdgeInsets.all(22.0)),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'User Name',
                    hintText: 'enter User Name',
                    prefixIcon: Icon(Icons.people),
                    border: OutlineInputBorder()
                ),

                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                controller: con.userName,

              ),
              Padding(padding: new EdgeInsets.all(10.0)),
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
             Padding(padding: new EdgeInsets.all(10.0)),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Phone',
                    hintText: 'enter Phone',
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder()
                ),

                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                controller: con.phone,

              ),

              Padding(padding: new EdgeInsets.all(10.0)),
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

              Padding(padding: new EdgeInsets.all(10.0)),

              SizedBox(
                width: double.infinity, // <-- match_parent
                height: 50, // <-- match-parent
                child:  ElevatedButton(   // MaterialButton
                  onPressed: () =>(){}, child: Text('Sign In')
                  ,style: ElevatedButton.styleFrom( foregroundColor: Colors.white,
                    backgroundColor: Colors.blue , textStyle: TextStyle(fontSize: 24) ) ,
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
