import 'package:flutter/material.dart';
import 'package:notes_app/components.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(color: kPrimaryColor),
      ),
    );
  }
}
