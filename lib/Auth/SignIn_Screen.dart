import 'package:flutter/material.dart';
import 'package:notes/MixinClass.dart';
import 'package:notes/Widgets/TextFiled_Widgets.dart';

class Sign_Screen extends StatefulWidget {
  const Sign_Screen({Key? key}) : super(key: key);

  @override
  State<Sign_Screen> createState() => _Sign_ScreenState();
}

late TextEditingController _nameEditingController;
late TextEditingController _emailEditingController;
late TextEditingController _passwordEditingController;

class _Sign_ScreenState extends State<Sign_Screen>with Helper {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameEditingController = TextEditingController();
    _emailEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _nameEditingController.dispose();
    _emailEditingController.dispose();
    _passwordEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Expanded(
            child: Column(
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
                  height: 20,
                ),
                Column(
                  children: [
                    TextFiled_Widgets(
                      Controller: _nameEditingController,
                      TextInputTypeFiled: TextInputType.text,
                      hint: 'Name',
                      sufficxIcon: const Icon(Icons.person),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
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
                      Controller: _passwordEditingController,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
  bool check() {
    if (_emailEditingController.text.toString().isNotEmpty &&
        _passwordEditingController.text.toString().isNotEmpty&& _nameEditingController.text.toString().isNotEmpty) {
      return true;
    } else {
      ShowSnakBare(context, masseg: 'Try Agin', error: true);
      return false;
    }
  }
  void Login() {
    if (check()) {
      Navigator.pushReplacementNamed(context, '/Notes_Screen');
    }
  }
}
