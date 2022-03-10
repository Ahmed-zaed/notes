import 'package:flutter/material.dart';
import 'package:notes/SharedPerf/SharedPrefrancses.dart';

class Lunch_Screen extends StatefulWidget {
  const Lunch_Screen({Key? key}) : super(key: key);

  @override
  State<Lunch_Screen> createState() => _Lunch_ScreenState();
}

class _Lunch_ScreenState extends State<Lunch_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      bool result = Controller_Sahred().resultSaved;
      String routes = result == true ? '/Notes_Screen' : '/Login_Screen';
      Navigator.pushReplacementNamed(context, routes);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
              Color(0xff4805BC),
              Color(0xff5A06B9),
            ],
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd)),
        child: Align(
          child: Image.asset('images/Group 5.png'),
        ),
        alignment: AlignmentDirectional.center,
      ),
    );
  }
}
