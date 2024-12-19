import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';


class SigninController extends ControllerMVC {

  static SigninController?  _this;
  factory SigninController(){
      _this ??= SigninController._();
      return _this!;
    }

  SigninController._();

 late TextEditingController userName , email , phone , password;
   @override
  void initState() {

      userName = TextEditingController();
      email = TextEditingController();
      phone = TextEditingController();
      password = TextEditingController();
    super.initState();
  }



  @override
  void dispose() {
    userName.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
  }