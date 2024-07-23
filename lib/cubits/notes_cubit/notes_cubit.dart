import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_cubit/notes_states.dart';
import 'package:notes_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesStates> {
  NotesCubit() : super(NotesInitial());

  fetchALLNotes(){
   try{
    var noteBox= Hive.box<NoteModel>(kNotesBox);
   List<NoteModel> notes = noteBox.values.toList();
    emit(NotesSuccess(notes: notes));
   }catch(e){
    emit(NotesFailure(errorMessage:e.toString()));
   }
  }
}