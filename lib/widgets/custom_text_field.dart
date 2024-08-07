import 'package:flutter/material.dart';
import 'package:my_first_note_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLine = 1});

  final String hint;
  final int maxLine;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
