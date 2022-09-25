import 'package:flutter/material.dart';
import 'package:flutter_examples/ui/coffeeUI/CoffeeUI.dart';

void main() {
  runApp( const Store());
}

class Store extends StatelessWidget {
  const Store({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomePageState(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        const Text(
          'Healthy Food',
          style: TextStyle(fontSize: 42, color: Colors.white),
        ),
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(28))),
          child: Column(
            children: [],
          ),
        ),
      ],
      ),
    );
  }
}

Widget _getTopBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
      ),
      Row(
        children: const [
          Icon(
            Icons.dashboard,
            color: Colors.white,
          ),
          Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ],
      )
    ],
  );
}
