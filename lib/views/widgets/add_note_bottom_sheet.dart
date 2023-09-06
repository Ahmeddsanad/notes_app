import 'package:flutter/material.dart';
import 'package:notes_app/components.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 24,
          left: 16,
          right: 16,
        ),
        child: Column(
          children: [
            CustomTextField(),
          ],
        ),
      ),
    );
  }
}
