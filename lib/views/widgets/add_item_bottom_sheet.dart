import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddItemBottomSheet extends StatelessWidget {
  const AddItemBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const  EdgeInsets.symmetric(vertical: 24,horizontal: 16),
      child:  Column(
        children: [
         const SizedBox(height: 10,),
         const CustomTextFormField(hintText: 'Title',verticalPadding: 16,),
         const SizedBox(
            height: 15,
          ),
         const CustomTextFormField(hintText: 'Content',verticalPadding: 70,),
         const Spacer(),
          CustomButton(text: 'Add',onPressed: (){},),
        ],
      ),
    );
  }
}