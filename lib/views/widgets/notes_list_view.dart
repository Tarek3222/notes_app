import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_states.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<NotesCubit, NotesStates>(
        builder: (context, state) {
          List<NoteModel> notesList = BlocProvider.of<NotesCubit>(context).notes!;
          return ListView.builder(
              itemCount: notesList.length,
              padding: const EdgeInsets.only(top: 12),
              itemBuilder: (context, index) {
                return  CustomNoteItem(noteItem: notesList[index],);
              });
        },
      ),
    );
  }
}
