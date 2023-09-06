import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16.0,
        ),
        color: Colors.white.withOpacity(0.05),
      ),
      child: Icon(
        icon,
        size: 28.0,
      ),
    );
  }
}
