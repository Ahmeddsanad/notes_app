import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/views/widgets/news_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NewsViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            context: (context),
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}



// class Popover extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     return Container(
//       margin: const EdgeInsets.all(16.0),
//       clipBehavior: Clip.antiAlias,
//       decoration: BoxDecoration(
//         color: theme.cardColor,
//         borderRadius: const BorderRadius.all(Radius.circular(32.0)),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           _buildHandle(context),
//         ],
//       ),
//     );
//   }

//   Widget _buildHandle(BuildContext context) {
//     final theme = Theme.of(context);

//     return FractionallySizedBox(
//       widthFactor: 0.25,
//       child: Container(
//         margin: const EdgeInsets.symmetric(
//           vertical: 12.0,
//         ),
//         child: Container(
//           height: 5.0,
//           decoration: BoxDecoration(
//             color: theme.dividerColor,
//             borderRadius: const BorderRadius.all(Radius.circular(2.5)),
//           ),
//         ),
//       ),
//     );
//   }
// }
