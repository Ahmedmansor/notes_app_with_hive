import 'package:flutter/material.dart';
import 'package:notes_app_with_hive/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.title,
      this.maxLines = 1,
      this.onSaved,
      this.validator});
  final String title;
  final int maxLines;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: validator,
      decoration: InputDecoration(
        hintText: title,
        hintStyle: const TextStyle(color: ColorsApp.kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: ColorsApp.kPrimaryColor),
      ),
      cursorColor: ColorsApp.kPrimaryColor,
      maxLines: maxLines,
    );
  }

  OutlineInputBorder buildBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
