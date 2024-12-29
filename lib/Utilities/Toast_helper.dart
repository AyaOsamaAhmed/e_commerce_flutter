
import 'package:e_commerce_flutter/Utilities/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ToastHelper{

  static Future showError({required String? message,Color? backgroundColor})async{
    await Fluttertoast.showToast(
      msg: message??"error",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: backgroundColor??Colors.redAccent,
      textColor: Colors.white,
      fontSize: 16.sp,
    );
  }

  static Future showSuccess({required String? message,Color? backgroundColor})async{
    await Fluttertoast.showToast(
        msg: message??"success",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: backgroundColor??ThemeClass.lightTheme().primaryColor,
        textColor: Colors.white,
        fontSize: 16.sp
    );
  }
}