import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {

   final String? text;
   final ShapeBorder? border;
   final Color? background;
   final Color? fontColor;

  const ButtonWidget({
    required this.text,
    this.border,
    this.background,
    this.fontColor
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){},
    child: Text(text!,
      style: TextStyle(fontSize: 18,
        color: fontColor!),),
        padding: const EdgeInsets.all(8),
      elevation: 10,
      shape:border!,
      color: background,

      //
      //
      //
      // RoundedRectangleBorder(borderRadius:
      // BorderRadius.circular(22))

    );
  }
}
