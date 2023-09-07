import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class NewsViewBody extends StatefulWidget {
  const NewsViewBody({
    super.key,
  });

  @override
  State<NewsViewBody> createState() => _NewsViewBodyState();
}

class _NewsViewBodyState extends State<NewsViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).FetchAllNotes();
    super.initState();
  }

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
            CustomAppBar(
              text: 'Notes',
              icon: Icons.search,
            ),
            NotesListView(),
          ],
        ),
      ),
    );
  }
}
