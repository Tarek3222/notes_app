import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_notes_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.noteItem,});

  final NoteModel noteItem;
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(noteItem.key.toString()),
      onDismissed: (_) {
        noteItem.delete();
        BlocProvider.of<NotesCubit>(context).fetchALLNotes();
      },
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return  EditNotesView(
                note: noteItem,
              );
            }),
          );
        },
        child: Container(
          padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            color: Color(noteItem.color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title:  Text(
                  noteItem.title,
                  style:const TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(
                    noteItem.content,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      letterSpacing: -0.1,
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    noteItem.delete();
                    BlocProvider.of<NotesCubit>(context).fetchALLNotes();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  noteItem.date,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
