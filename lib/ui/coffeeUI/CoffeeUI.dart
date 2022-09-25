import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_examples/ui/coffeeUI/ListTileWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        home: const ScaffoldWidget());
  }
}

class ScaffoldWidget extends StatefulWidget {
  const ScaffoldWidget({Key? key}) : super(key: key);

  @override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    return _getScaffold();
  }
}

Widget _getScaffold() {
  return Scaffold(
    backgroundColor: Colors.grey[900],
    bottomNavigationBar: BottomNavigationBar(items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
    ]),
    body: HomePageState(),
  );
}

class HomePageState extends StatefulWidget {
  @override
  State<HomePageState> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageState> {
  @override
  Widget build(BuildContext context) {
    return MainLayout();
  }
}

class MainLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 600,
        margin: const EdgeInsets.only(top: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Icon(Icons.menu),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Icon(Icons.person),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text("Find the best coffee for you",
                  style: GoogleFonts.bebasNeue(fontSize: 58)),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: Colors.white,
                  hintText: "Find your Coffee",
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Expanded(
              child: _getListView(),
            ),
          ],
        ),
      ),
    );
  }

  _getCoffeeType(){

  }

  _getListView() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        ListTileWidget(
          image: Image.asset(
            'assets/images/latte.jpg',
          ),
          title: 'latte',
          description: 'With almost milk',
          price: '4.0\$',
        ),
        ListTileWidget(
          image: Image.asset(
            'assets/images/americano.jpg',
          ),
          title: 'americano',
          description: 'Without milk',
          price: '7.0\$',
        ),

        ListTileWidget(
          image: Image.asset(
            'assets/images/mocha.jpg',
          ),
          title: 'mocha',
          description: 'With ice',
          price: '8.0\$',
        ),

      ],
    );
  }
}
