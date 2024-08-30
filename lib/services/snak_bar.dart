import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showSuccessSnack(e) {
  Fluttertoast.showToast(
      msg: e,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}

showErrorSnack(e) {
  Fluttertoast.showToast(
      msg: e,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}

showWarningSnack(e) {
  Fluttertoast.showToast(
      msg: e,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.yellow,
      textColor: Colors.white,
      fontSize: 16.0);
}
