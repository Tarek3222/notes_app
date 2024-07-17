import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddItemBottomSheet extends StatelessWidget {
  const AddItemBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const  EdgeInsets.symmetric(vertical: 24,horizontal: 16),
      child:  SingleChildScrollView(
        child: Column(
          children: [
           const SizedBox(height: 10,),
           const CustomTextFormField(hintText: 'Title',),
           const SizedBox(
              height: 15,
            ),
           const CustomTextFormField(hintText: 'Content',maxLines: 5,),
           const SizedBox(height: 70,),
            CustomButton(text: 'Add',onPressed: (){},),
          ],
        ),
      ),
    );
  }
}