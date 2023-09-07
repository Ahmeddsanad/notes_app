import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;

  List<Color> color = const [
    Color(0xFF53E9D4),
    Color(0xFFF68016),
    Color(0xFFF02C77),
    Color(0xFF870EDF),
    Color(0xFF75FD1E),
    Color(0xFFF3FD00),
    Color(0xFF00C0DF),
  ];

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
            setState(() {});
          },
          child: ColorItem(
            isActive: currentIndex == index,
            color: color[index],
          ),
        ),
        itemCount: color.length,
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
