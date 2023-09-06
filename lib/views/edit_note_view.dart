import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 12.0,
          left: 24.0,
          right: 24.0,
        ),
        child: SafeArea(
          child: Column(
            children: [
              CustomAppBar(
                text: 'Edit Note',
                icon: Icons.check,
              ),
              SizedBox(
                height: 32,
              ),
              CustomTextField(
                hintText: 'Title',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                hintText: 'Context',
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
