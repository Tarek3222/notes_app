import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child:Padding(
          padding: const EdgeInsets.only(top: 4),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            children:const [
             CustomAppBar(),
            ],
          ),
        ),
      );
  }
}