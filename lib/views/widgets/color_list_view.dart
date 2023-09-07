import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubit/Add_note_cubit/add_note_cubit.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;

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
            BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
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

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.isActive,
    required this.color,
  });

  final bool isActive;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 32,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 26,
            ),
          )
        : CircleAvatar(
            backgroundColor: Colors.white24,
            radius: 32,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 26,
            ),
          );
  }
}
