import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only( left: 24, right: 24,bottom: 12),
        child: Column(
          children: [
            SizedBox(height: 18,),
            CustomAppBar(icon: Icons.search,title: 'Notes',),
            NotesListView(),
          ],
        ),
      ),
    );
  }
}
