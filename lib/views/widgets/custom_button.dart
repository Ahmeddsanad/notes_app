import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap, this.isLoading = false});

  final void Function()? onTap;

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        child: isLoading
            ? const Center(
                child: SizedBox(
                  height: 32,
                  width: 32,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                ),
              )
            : const Center(
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
      ),
    );
  }
}
