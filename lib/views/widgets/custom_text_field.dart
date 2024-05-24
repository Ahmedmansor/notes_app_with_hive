import 'package:flutter/material.dart';
import 'package:notes_app_with_hive/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'title',
        hintStyle: const TextStyle(color: ColorsApp.kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: ColorsApp.kPrimaryColor),
      ),
      cursorColor: ColorsApp.kPrimaryColor,
    );
  }

  OutlineInputBorder buildBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
