import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';


class SigninController extends ControllerMVC {

  factory SigninController(){
      _this ??= SigninController._();
      return _this!;
    }

  static SigninController?  _this;
  SigninController._();

 late TextEditingController email , password;
   @override
  void initState() {

      email = TextEditingController();
      password = TextEditingController();
    super.initState();
  }



  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
  }