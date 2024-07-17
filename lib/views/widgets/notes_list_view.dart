import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
 final List<Color> colors=const[
  Colors.orange,
  Colors.green,
  Colors.blue,
  Colors.pink,
  Colors.yellow,
  Colors.purple,
  Colors.grey,
  Colors.red,
  Colors.blueGrey,
  Colors.teal
 ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: const EdgeInsets.only(top: 12),
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return  CustomNoteItem(color: colors[index],);
          }),
    );
  }
}
