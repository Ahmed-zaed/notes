import 'package:flutter/material.dart';
import 'package:notes/Auth/Login_Screen.dart';
import 'package:notes/Auth/SignIn_Screen.dart';
import 'package:notes/Lanch_Screen/Lunch_Screen.dart';
import 'package:notes/Screens/NotesScreen.dart';
import 'package:notes/SharedPerf/SharedPrefrancses.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Controller_Sahred().SharedInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/Lunch_Screen',
      routes: {
        '/Lunch_Screen': (context) => const Lunch_Screen(),
        '/Login_Screen': (context) => const Logein_Screen(),
        '/Signin_Screen': (context) => const Sign_Screen(),
        '/Notes_Screen': (context) => const NotesScreen(),
      },
    );
  }
}
