import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/color_list_view.dart';

class EditNotesColorsList extends StatefulWidget {
  const EditNotesColorsList({
    super.key,
    required this.notes,
  });

  final NoteModel notes;

  @override
  State<EditNotesColorsList> createState() => _EditNotesColorsListState();
}

class _EditNotesColorsListState extends State<EditNotesColorsList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.notes.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            currentIndex = index;
            widget.notes.color = kColors[index].value;
            setState(() {});
          },
          child: ColorItem(
            isActive: currentIndex == index,
            color: kColors[index],
          ),
        ),
        itemCount: kColors.length,
        separatorBuilder: (context, index) => const SizedBox(
          width: 6,
        ),
      ),
    );
  }
}
