import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/news_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NewsViewBody(),
    );
  }
}
