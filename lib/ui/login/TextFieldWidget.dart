import 'package:flutter/material.dart';
import 'package:flutter_examples/core/utils/AppColors.dart';

class TextFieldWidget extends StatelessWidget {

  final String? hint;
  final Icon? icon;
  final bool? obscureText;

  const TextFieldWidget({
    required this.hint,
    required this.icon,
    this.obscureText=false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText!,
      decoration: InputDecoration(
        enabledBorder:const UnderlineInputBorder(
            borderSide:BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10),),
    ) ,
          focusedBorder: const OutlineInputBorder( 
            borderRadius: BorderRadius.all(Radius.circular(10),),
            borderSide: BorderSide(color: AppColors.blue,
              width: 2,),
          ),

          label: Text(hint!,style: const TextStyle(fontSize: 16),),
        labelStyle:const TextStyle(color: AppColors.blue),
        prefixIcon: icon,
        filled: true,
      ),
        style:const TextStyle(fontSize: 16,color: AppColors.blue),
    );
  }
}