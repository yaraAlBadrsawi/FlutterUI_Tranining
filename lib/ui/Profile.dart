import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyWiget();
}

class MyWiget extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
               const Padding(
                 padding:  EdgeInsets.symmetric(horizontal: 122,
                     vertical: 55),
                 child:  Text("Profile",
                  textAlign:TextAlign.center,
                  style: TextStyle(fontSize: 38,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.bold),),
               ),

          ClipPath(
            child: Container(
              color: Colors.black.withOpacity(0.7),
            ),
            clipper: Clipper(),
          ),
          Positioned(
              top: 125,
              right: 50,
              left: 50,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: CircleAvatar(
                      radius:65,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/cartoon.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("user name",
                        style: TextStyle(
                            shadows: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 0.5,
                              )
                            ],
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 44.5, right: 8.5, left: 8.5, bottom: 16),
                    child: MaterialButton(
                      splashColor: Colors.lightBlue,
                      elevation: 16,
                      onPressed: () {},
                      child: const Text(
                        "Edit name",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 0.0, right: 8.5, left: 8.5, bottom: 12),
                    child: MaterialButton(
                      splashColor: Colors.lightBlue,
                      elevation: 16,
                      onPressed: () {},
                      child: const Text(
                        "Log out",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

class Clipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    print(size.height - 290);
    return Path()
      ..lineTo(0, size.height - 280)
      ..lineTo(size.width + 400, 0)
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
