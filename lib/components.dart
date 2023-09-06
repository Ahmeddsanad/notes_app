import 'package:flutter/material.dart';

OutlineInputBorder BuildBorder({color}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(
      8,
    ),
    borderSide: BorderSide(
      color: color ?? Colors.white,
    ),
  );
}
