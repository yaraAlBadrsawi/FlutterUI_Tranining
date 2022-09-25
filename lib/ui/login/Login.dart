import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_examples/core/utils/AppColors.dart';
import 'package:flutter_examples/ui/login/ButtonWidget.dart';

import 'TextFieldWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(body: Login()),
    );
  }
}

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPage();
}

class _LoginPage extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: const TextFieldWidget(
          hint: 'Email',
          icon: Icon(
            Icons.email,
            color: AppColors.blue,
          ),
        ),
      ),
      const SizedBox(
        width: 1,
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: const TextFieldWidget(
          hint: 'Password',
          icon: Icon(
            Icons.lock,
            color: AppColors.blue,
          ),
          obscureText: true,
        ),
      ),
      const SizedBox(
        width: 1,
      ),
      Container(
        alignment: Alignment.centerRight,
        margin: const EdgeInsets.only(right: 15, bottom: 15),
        child: const Text(
          "Forget Password?",
          style: TextStyle(
            fontSize: 15,
            color: AppColors.blue,
          ),
        ),
      ),
      Container(
        width: double.infinity,height: 50,
        margin: const EdgeInsets.all(10),
        child: ButtonWidget(
          text: 'Login',
          fontColor: Colors.white,
          background: AppColors.blue,
          border: RoundedRectangleBorder(borderRadius:
          BorderRadius.circular(10)),
        ),
      ),
      Container(
        width: double.infinity,
        height: 50,
        margin: const EdgeInsets.only(right: 10,left: 10,bottom: 10),
        child: ButtonWidget(
          text: 'Sign up',
          fontColor: AppColors.blue,
          border:RoundedRectangleBorder(
    side:const BorderSide(color: AppColors.blue,width: 2,)
    ,borderRadius: BorderRadius.circular(10),

    )
          ,

     //     RoundedRectangleBorder(borderRadius:
          // BorderRadius.circular(10)),
        ),
      ),
    ]);
  }
}
