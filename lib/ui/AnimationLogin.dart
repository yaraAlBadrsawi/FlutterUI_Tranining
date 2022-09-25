import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_examples/ui/Profile.dart';

class AnimationLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Login();
  }
}

class Login extends State<AnimationLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          _background(),
          _userTextField(),
          _passwordTextField(),
          _loginButton(),
          _textForgetPassword(),
        ],
      ),
    );
  }
}

Widget _background() {
  return Container(
    height: 280,
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.fill)),
    child: Stack(
      children: [
        Positioned(
            left: 30,
            width: 80,
            height: 150,
            child: Image.asset('assets/images/light-1.png')),
        Positioned(
          left: 120,
          width: 80,
          height: 120,
          child: Image.asset('assets/images/light-2.png'),
        ),
        Positioned(
          child: Container(
            alignment: Alignment.center,
            padding:
                const EdgeInsets.only(top: 40, right: 22, left: 22, bottom: 20),
            child: const Text(
              "Login",
              style: TextStyle(
                  fontSize: 40.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _userTextField() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 22),
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(143, 148, 151, 0.2),
              blurRadius: 18,
              offset: Offset(1, 5))
        ]),
    child: const TextField(
      showCursor: true,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        label: Text("User Name"),
        border: InputBorder.none,
        fillColor: Colors.white,
        icon: Icon(
          Icons.person,
          color: Colors.grey,
        ),
      ),
    ),
  );
}

Widget _passwordTextField() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 22),
    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(143, 148, 151, 0.2),
              blurRadius: 18,
              offset: Offset(1, 5))
        ]),
    child: const TextField(
      showCursor: true,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        label: Text("Password"),
        border: InputBorder.none,
        fillColor: Colors.white,
        icon: Icon(
          Icons.key,
          color: Colors.grey,
        ),
      ),
    ),
  );
}

Widget _loginButton() {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(colors: [
          Color.fromRGBO(143, 148, 251, 1),
          Color.fromRGBO(143, 148, 251, 0.6),
        ]),
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(143, 148, 151, 0.2),
              blurRadius: 14,
              offset: Offset(1, 5))
        ]),
    child: MaterialButton(
      elevation: 8.2,
      padding: const EdgeInsets.all(18),
      onPressed: () {},
      child: const Text(
        'Login',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize:20,
            color: Colors.white),
      ),
    ),
  );
}

Widget _textForgetPassword(){
  return  Container(padding: const EdgeInsets.all(20.5),
    child: const Text("Forget Password",
    style: TextStyle(fontSize: 14,
      color: Color.fromRGBO(143, 148, 151, 1), ),),
  );
}