import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_examples/ui/mental/mental_widget.dart';

void main() {
  // SystemChrome
  //     .setSystemUIOverlayStyle(
  //     const SystemUiOverlayStyle(
  //         statusBarColor: Colors.transparent));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: HomePage(),
    );
  }
}