import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
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
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = content ?? widget.note.subTitle;
                widget.note.save();

                BlocProvider.of<NotesCubit>(context).FetchAllNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 32,
            ),
            CustomTextField(
              hintText: widget.note.title,
              onChanged: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              hintText: widget.note.subTitle,
              maxLines: 5,
              onChanged: (value) {
                content = value;
              },
            ),
          ],
        ),
      ),
    );
  }
}
