import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NewsViewBody extends StatelessWidget {
  const NewsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: 12.0,
        horizontal: 24.0,
      ),
      child: SafeArea(
        child: Column(
          children: [
            CutomAppBar(),
            NoteItem(),
          ],
        ),
      ),
    );
  }
}
