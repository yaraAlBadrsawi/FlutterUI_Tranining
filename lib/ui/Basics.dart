import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Login extends State<Basics>{
  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController=TextEditingController();
    TextEditingController passwordController=TextEditingController();
    return Container(decoration: const BoxDecoration(
      gradient:
      LinearGradient(
        begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
          Colors.blue,
          Colors.yellow,
        ]
      )
    ),
    child: Scaffold(
      backgroundColor: Colors.transparent,


    ),

    );

  }


  Widget _icon(){
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2,color: Colors.white)
    ),
        child:const Icon(Icons.person,color: Colors.white,size: 120,)
    );
  }

  Widget _TextField(){
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children:[
  ]

    );
  }

}

class Basics extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Login();
  }

}