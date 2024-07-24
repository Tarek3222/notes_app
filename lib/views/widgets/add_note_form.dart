import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jiffy/jiffy.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/colors_list_view.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key,  this.isLoading=false});
  final bool isLoading;

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title;
  String? content;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: 'Title',
            onChanged: (data) {
              setState(() {
                title = data;
              });
            },
            validator: (data) {
              if (data?.isEmpty ?? true) {
                return 'please enter title';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextFormField(
            hintText: 'Content',
            maxLines: 5,
            onChanged: (data) {
              setState(() {
                content = data;
              });
            },
            validator: (data) {
              if (data?.isEmpty ?? true) {
                return 'please enter content';
              }
              return null;
            },
          ),
          const ColorsListView(),
          const SizedBox(
            height: 40,
          ),
         widget.isLoading?const CircularProgressIndicator(color: Colors.white,): CustomButton(
                text: 'Add',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    addNote(context);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            const  SizedBox(height: 12,)
        ],
      ),
    );
  }

  void addNote(BuildContext context) {
      var currentDateFormatted=Jiffy.now().yMMMMd;
    var noteModel = NoteModel(
        title: title!,
        content: content!,
        date: currentDateFormatted,
        color: Colors.blue.value);
    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
  }
}
