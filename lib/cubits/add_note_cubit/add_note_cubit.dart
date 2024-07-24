import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNotesState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color=const Color(0xff8FACEA);
  addNote(NoteModel note)async{
    emit(AddNoteLoading());
   try{
    var noteBox= Hive.box<NoteModel>(kNotesBox);
    note.color= color.value;
    await noteBox.add(note);
    emit(AddNoteSuccess());
   }catch(e){
    emit(AddNoteFailure(e.toString()));
   }
  }
}