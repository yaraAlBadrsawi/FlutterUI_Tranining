import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ListWidget();
}

class ListWidget extends State<Home> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController? _controller = null;

  @override
  Widget build(BuildContext context) {
    String text="";
    return Container(margin: const EdgeInsets.all(20),
    child:getAlertDialog()
    );

    List list = List.generate(1000, (index) => Text("list ${index + 1}"));

    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) => Container(child: getCard()),
    );
  }


  Widget getAlertDialog() {

    return
      Container(
        child: ElevatedButton(onPressed: (){

          showDialog(context: context,builder :(BuildContext context){
            return AlertDialog(
              elevation:80,
              backgroundColor: Colors.yellow[200],
              shape:  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              titleTextStyle:const TextStyle(fontSize: 20,color: Colors.green),
              title: const Text("sample Alert Dialog"),
              content:const Text("this is our content"),
              actions: [
                MaterialButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('ok'))
              ],
            );
          });
        },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("show Alert Dialog",style: TextStyle(fontSize: 18),),
            ),
      ));

  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (!states.any(interactiveStates.contains)) {
      return Colors.transparent;
    }
    return Colors.red;
  }

  Widget getDropDownButton() {
    var selected = "java";
    List language = ['c++', 'java', 'kotlin', 'dart', 'php', 'python', 'go'];

    return Column(children: [
      DropdownButton(
          hint: const Text("Select language"),
          items: language
              .map((e) => DropdownMenuItem(
                    child: Text("$e"),
                    value: e,
                  ))
              .toList(),
          onChanged: (value) {
            setState(() {
              selected = value as String;
            });
          })
    ]);
  }

  Widget getTextForm() {
    return Form(
        key: _formKey,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextFormField(
            controller: _controller,
            onEditingComplete: () {
              print("completing");
            },
            onChanged: (val) {
              if (val.isEmpty) {
                print("done");
              }
            },
            cursorColor: Colors.red,
            cursorRadius: const Radius.circular(22.2),
            decoration: const InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Colors.redAccent,
                ),
                hintText: 'Enter your full name',
                labelText: 'Name',
                labelStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.red)),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print("cant be empty");
                }
              },
              child: const Text("submit"),
            ),
          )
        ]));
  }

  Widget getCard() {
    return SizedBox(
      height: 170,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          shadowColor: Colors.black45,
          margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
          elevation: 10,
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 35),
                child: Image(
                  alignment: Alignment.topLeft,
                  image: AssetImage('assets/images/cartoon.jpg'),
                  width: 70,
                  height: double.infinity,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("product1"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("product2"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("product3"),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
