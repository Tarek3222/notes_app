import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/colors_list_view.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
 
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return  Padding(
            padding:const EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {
                widget.note.color = kColors[index].value;
                setState(() {});
              },
              child: ColorsItem(
                isActive:kColors[index].value==widget.note.color,
                color: kColors[index],
              ),
            ),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}