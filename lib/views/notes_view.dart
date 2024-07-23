import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_item_bottom_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddItemBottomSheet();
            },
            isScrollControlled: true,
          );
        },
        backgroundColor: Colors.lightBlue[300],
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
