import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import '../../../generated/assets.dart';
import '../signin/signin_screen.dart';
import 'signup_controller.dart';

class SignupScreen extends StatefulWidget {
  static const routeName = "signup";

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
        child: Expanded(
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
                Padding(padding: new EdgeInsets.all(5.0)),
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
                    onPressed: () =>(){}, child: Text('Sign Up')
                    ,style: ElevatedButton.styleFrom( foregroundColor: Colors.white,
                      backgroundColor: Colors.blue , textStyle: TextStyle(fontSize: 24) ) ,
                  ),
                ),
                Padding(padding: new EdgeInsets.all(5.0)),
                Text("If You Have Accout >> Join Now .."),
                Padding(padding: new EdgeInsets.all(5.0)),
                GestureDetector(
                  child: Text("Sign In" , style: TextStyle(fontSize: 18 , color: Colors.green),textAlign: TextAlign.center,),
                onTap: ()=> Navigator.pushNamed(context,SigninScreen.routeName)
                )
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
