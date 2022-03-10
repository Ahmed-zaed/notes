import 'package:flutter/material.dart';

class TextFiled_Widgets extends StatelessWidget {
  const TextFiled_Widgets({Key? key,
    required this.hint,
    this.obscureText = false,
    required this.Controller,
    required this.sufficxIcon,
    required this.TextInputTypeFiled})
      : super(key: key);
  final String hint;
  final Icon sufficxIcon;
  final TextInputType TextInputTypeFiled;
  final bool obscureText;
  final TextEditingController Controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: Controller,
        keyboardType: TextInputTypeFiled,
        obscureText: obscureText,
        decoration: InputDecoration(

          hintText: hint,
          suffixIcon: sufficxIcon,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white, width: 1),
          ),
        ),
      ),
    );
  }
}
