import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class NewsViewBody extends StatelessWidget {
  const NewsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 12.0,
        left: 24.0,
        right: 24.0,
      ),
      child: SafeArea(
        child: Column(
          children: [
            CutomAppBar(),
            NotesListView(),
          ],
        ),
      ),
    );
  }
}
