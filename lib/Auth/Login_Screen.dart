import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/MixinClass.dart';
import 'package:notes/SharedPerf/SharedPrefrancses.dart';
import 'package:notes/Widgets/TextFiled_Widgets.dart';

class Logein_Screen extends StatefulWidget {
  const Logein_Screen({Key? key}) : super(key: key);

  @override
  State<Logein_Screen> createState() => _Logein_ScreenState();
}

late TextEditingController _emailEditingController;
late TextEditingController _PaswordEditingController;

class _Logein_ScreenState extends State<Logein_Screen> with Helper {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailEditingController = TextEditingController();
    _PaswordEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailEditingController.dispose();
    _PaswordEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(200),
                  ),
                  gradient: LinearGradient(
                    begin: AlignmentDirectional.topStart,
                    end: AlignmentDirectional.bottomEnd,
                    colors: [
                      Color(0xff5A06B9),
                      Color(0xff0078E3),
                    ],
                  ),
                ),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Image.asset(
                      'images/Group 5.png',
                      height: 140,
                      width: 140,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  TextFiled_Widgets(
                    Controller: _emailEditingController,
                    TextInputTypeFiled: TextInputType.emailAddress,
                    hint: 'Email',
                    sufficxIcon: const Icon(Icons.email),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFiled_Widgets(
                    Controller: _PaswordEditingController,
                    TextInputTypeFiled: TextInputType.text,
                    obscureText: true,
                    hint: 'Password',
                    sufficxIcon: const Icon(Icons.lock),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Login();
                  },
                  child: const Text('LOGIN'),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff4C00BE),
                    minimumSize: const Size(double.infinity, 55),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Dont have an account ? '),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Signin_Screen');
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 1,
              )
            ],
          ),
        ],
      ),
    );
  }

  bool check() {
    if (_emailEditingController.text.toString().isNotEmpty &&
        _PaswordEditingController.text.toString().isNotEmpty) {
      return true;
    } else {
      ShowSnakBare(context, masseg: 'Try Agin', error: true);
      return false;
    }
  }

  void Login() {
    if (check()) {
      Controller_Sahred().save(email: _emailEditingController.text.toString());
      Navigator.pushReplacementNamed(context, '/Notes_Screen');
    }
  }
}
