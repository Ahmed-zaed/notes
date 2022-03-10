import 'package:flutter/material.dart';

mixin Helper {
  void ShowSnakBare(BuildContext context,
      {required String masseg, required bool error}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(masseg),
        backgroundColor: error == true ? Colors.red : Colors.green,
        dismissDirection: DismissDirection.horizontal,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsetsDirectional.only(bottom: 10 , start: 20 , end: 20),
        duration: Duration(seconds: 3),

      ),
    );
  }
}
