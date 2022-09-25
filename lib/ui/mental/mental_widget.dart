import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2471B7),
      body: Column(children: [
        _getTopSide(),
        _getSearchTextField(),
        _getFeeling(),
        _getFeelingList(),
        _getBottomSide(),
      ]),
    );
  }
}

Widget _getTopSide() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 35, right: 25, left: 25, bottom: 8),
            child: Text(
              'Hi Jared!',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),
            ),
          ),
          Text(
            '23 jan 2021',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.grey[400]),
          ),
        ],
      ),
      Container(
          margin: const EdgeInsets.only(top: 35, right: 25, left: 25),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.notifications, color: Colors.white),
          )),
    ],
  );
}

Widget _getSearchTextField() {
  return Container(
    margin: const EdgeInsets.all(28),
    child: TextField(
      textInputAction: TextInputAction.search,
      showCursor: true,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(0.2),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.white,
        ),
        label: const Text(
          'search ',
          style: TextStyle(fontSize: 18),
        ),
        labelStyle: const TextStyle(color: Colors.white),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          borderSide: BorderSide.none,
        ),
        focusedBorder: const UnderlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          // borderSide:BorderSid.none,
        ),
      ),
    ),
  );
}

Widget _getFeeling() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          'How do you feel?',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 28),
        child: Text(
          '..',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    ],
  );
}

Widget _getFeelingList() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.only(left: 12),
    child: Row(
      children: [
        Column(
          children: [
            _getEmoji('😂'),
            _getEmojiName('Fine'),
          ],
        ),
        Column(
          children: [
            _getEmoji('😌'),
            _getEmojiName('relevated'),
          ],
        ),
        Column(
          children: [
            _getEmoji('☺'),
            _getEmojiName('happy'),
          ],
        ),
        Column(
          children: [
            _getEmoji('😓'),
            _getEmojiName('relevated'),
          ],
        ),
        Column(
          children: [
            _getEmoji('😄'),
            _getEmojiName('well'),
          ],
        ),
        Column(
          children: [
            _getEmoji('😋'),
            _getEmojiName('weary'),
          ],
        ),
        Column(
          children: [
            _getEmoji('🤓'),
            _getEmojiName('nice'),
          ],
        ),
        Column(
          children: [
            _getEmoji('😦'),
            _getEmojiName('well'),
          ],
        ),
        Column(
          children: [
            _getEmoji('😬'),
            _getEmojiName('Bodly'),
          ],
        ),
      ],
    ),
  );
}

Widget _getEmoji(var emoji) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.2),
      borderRadius: BorderRadius.circular(12),
    ),
    width: 60,
    height: 60,
    margin: const EdgeInsets.only(top: 22, left: 10),
    padding: const EdgeInsets.all(10),
    child: Text('$emoji',
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 30,
        )),
  );
}

Widget _getEmojiName(var emojiName) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      '$emojiName',
      style: const TextStyle(fontSize: 15, color: Colors.white),
    ),
  );
}

Widget _getBottomSide() {
  return Expanded(
    child: Container(
      margin: const EdgeInsets.only(top: 22),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding:
                      EdgeInsets.only(top: 18, right: 25, left: 25, bottom: 8),
                  child: Text(
                    'Excercises',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(
                        top: 10, right: 25, left: 25, bottom: 8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(Icons.more_horiz_sharp, color: Colors.black),
                    )),
              ],
            ),
            _getExRow(
                Colors.deepOrange,
                const Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                'Speaking Skill ',
                '18 Excercises'),
            _getExRow(
                const Color(0xff2471B7),
                const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                'Recording Speed',
                '8 Excercises'),
            _getExRow(
                Colors.pink,
                const Icon(
                  Icons.border_color_outlined,
                  color: Colors.white,
                ),
                'writing Skill ',
                '5 Excercises'),
          ],
        ),
      ),
    ),
  );
}

Widget _getExRow(
  Color containerColor,
  Icon containerIcon,
  String skillName,
  String skillNum,
) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 5),
    padding: EdgeInsets.all(5),
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 20)]),
    child: Row(
      children: [
        _getImageContainer(containerColor, containerIcon),
        _getColumnSkills(skillName, skillNum),
        SizedBox(
          width: 30,
        ),
        Icon(
          Icons.more_horiz_sharp,
          color: Colors.black,
        ),
      ],
    ),
  );
}

Widget _getImageContainer(Color color, Icon icon) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(13)),
      color: color,
    ),
    child: icon,
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.all(10),
  );
}

Widget _getColumnSkills(String skill, String skillNum) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          skill,
          textAlign: TextAlign.start,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Text(
          skillNum,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      )
    ],
  );
}
