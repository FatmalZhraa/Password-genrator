import 'dart:math';

import 'package:flutter/material.dart';
import 'package:password_generator/components/my_card.dart';
import 'package:password_generator/components/my_slider.dart';

import '../components/default_button.dart';
import '../components/default_text_field.dart';

class FullScreen extends StatefulWidget {
  const FullScreen({super.key});

  @override
  State<FullScreen> createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {

  int index = 0; // 0: aBc, 1: abc, 2: ABC
  double length = 8; // Default password length
  String password = '';

  void changeIndex(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }
  void changeLength(double newLength) {
    setState(() {
      length = newLength;
    });
  }
  void generateRandomPassword() {
    setState(() {
      password = generatePassword(length.toInt(), index);
    });
  }

  String generatePassword(int length, int index) {
    const lowercase = 'abcdefghijklmnopqrstuvwxyz';
    const uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    const digits = '0123456789';
    const specialChars = '!@#\$%^&*()_+[]{}|;:,.<>?';

    String chars;
    switch (index) {
      case 0: // aBc
        chars = lowercase + uppercase;
        break;
      case 1: // abc
        chars = lowercase;
        break;
      case 2: // ABC
        chars = uppercase;
        break;
      default:
        chars = lowercase + uppercase + digits + specialChars;
    }

    Random rand = Random();
    return List.generate(length, (index) => chars[rand.nextInt(chars.length)]).join();
  }
//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white10,
      body: Column(
        children: [
         SizedBox(
           height: 200,
         ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child:
        DefaultTextField(text: password),
      ),
      Row(
        children: [
          GestureDetector(
            onTap: () => changeIndex(0),
            child: MyCard(text: 'aBc',
                tl: 20,
                tr: 0,
                bl: 20,
                br: 0,
              color: index==0? Colors.blue : Colors.grey[900],
            ),

          ),
          GestureDetector(
            onTap: () => changeIndex(1),
            child: MyCard(text: 'abc',
                tl: 0,
                tr: 0,
                bl: 0,
                br: 0,
              color: index==1? Colors.blue :Colors.grey[900],
            ),
          ),
          GestureDetector(
            onTap: () => changeIndex(2),

            child: MyCard(text: 'ABC',
                tl: 0,
                tr: 20,
                bl: 0,
                br: 20,
              color: index==2? Colors.blue :Colors.grey[900],
            ),
          ),
        ],
      ),
          SizedBox(height: 10),
          MySlider(length, (value) {changeLength(value);}),  //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
          MyButton(fun: generateRandomPassword),],)          //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    );
  }
}