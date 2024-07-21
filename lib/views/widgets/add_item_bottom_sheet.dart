import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';
class AddItemBottomSheet extends StatelessWidget {
  const AddItemBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding:  EdgeInsets.symmetric(vertical: 24,horizontal: 16),
      child:  SingleChildScrollView(
        child:AddNoteForm() ,
      ),
    );
  }
}