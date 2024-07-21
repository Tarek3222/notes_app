import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

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
             const SizedBox(height: 10,),
              CustomTextFormField(
              hintText: 'Title',
              onChanged: (data){
                setState(() {
                   title = data;
                });
              },
              validator: (data){
                if(data?.isEmpty ?? true){
                  return 'please enter title';
                }
                return null;
              },
              ),
             const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
              hintText: 'Content',maxLines: 5,
              onChanged: (data){
                setState(() {
                   content = data;
                });
              },
              validator: (data){
                if(data?.isEmpty??true){
                  return 'please enter content';
                }
                return null;
              },
              ),
             const SizedBox(height: 70,),
              CustomButton(text: 'Add',onPressed: (){
                if(formKey.currentState!.validate()){
                  formKey.currentState!.save();
                }else{
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },),
            ],
          ),
    );
  }
}