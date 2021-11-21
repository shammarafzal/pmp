import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    this.isPassword = false,
    this.maxlines = 1
  }) : super(key: key);
  final controller;
  final bool isPassword;
  final int maxlines;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      maxLines: widget.maxlines,
      obscureText: !widget.isPassword ? false : _obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromRGBO(246, 247, 249, 1),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
