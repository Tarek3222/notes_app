import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hintText,  this.onChanged, this.validator, this.obscureText = false, this.maxLines=1, });
  final String hintText;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
            cursorColor: kPrimaryColor,
            obscureText: obscureText!,
            validator: validator,
            onChanged: onChanged ,
            maxLines:maxLines ,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle:const TextStyle(
                color: kPrimaryColor,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:const BorderSide(color:  kPrimaryColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:const BorderSide(color: Colors.white),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          );
  }
}