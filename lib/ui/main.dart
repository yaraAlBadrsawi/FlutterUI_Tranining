import 'package:flutter/material.dart';
import 'package:flutter_examples/ui/AnimationLogin.dart';
import 'package:flutter_examples/ui/Profile.dart';
import 'package:flutter_examples/ui/login/Login.dart';

import 'Basics.dart';
import 'Home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Flutter Demo',
        home: MyHomePage(
          title: 'title',
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.red,
            textTheme:
                const TextTheme(displayMedium: TextStyle(color: Colors.red))),
        home: AnimationLogin());
  }

  getTabView() {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.green,
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                  currentAccountPicture: SizedBox(
                    height: 60,
                    width: 60,
                    child: CircleAvatar(
                      child: Icon(Icons.face),
                      backgroundColor: Colors.yellowAccent,
                    ),
                  ),
                  accountName: Text("yara"),
                  accountEmail: Text("yarasameer00@gmail.com")),
              ListTile(
                title: Text("data1"),
                leading: Icon(Icons.power_settings_new_outlined),
                onTap: () => print('you pressed me'),
              ),
              ListTile(
                title: Text("data2"),
                subtitle: Text("sub text"),
                leading: Icon(Icons.search),
                onTap: () => print('you pressed me'),
              ),
              ListTile(
                title: Text("data3"),
                onTap: () => print('you pressed me'),
                leading: Icon(Icons.login_rounded),
              ),
              ListTile(
                title: Text("data4"),
                onTap: () => print('you pressed me'),
                leading: Icon(Icons.family_restroom_rounded),
              ),
              ListTile(
                title: Text("data5"),
                leading: Icon(
                  Icons.language_outlined,
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(widget.title),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Tab1",
                icon: Icon(Icons.developer_board),
              ),
              Tab(
                text: "Tab2",
                icon: Icon(Icons.table_restaurant_outlined),
              ),
              Tab(
                text: "Tab3",
                icon: Icon(Icons.face_outlined),
              ),
            ],
          ),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Home(),
      ),
    );
  }
}
