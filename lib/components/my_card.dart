import 'package:flutter/material.dart';
class MyCard extends StatelessWidget {

  final String text;
  final double tl;
  final double tr;
  final double bl;
  final double br;
  final color;

  MyCard({ required this.text,  required this.tl,  required this.tr,required this.bl,required this.br , required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(tl),
            topRight: Radius.circular(tr),
            bottomLeft: Radius.circular(bl),
            bottomRight: Radius.circular(br),
          ),
          color: color),
      child: Text(
       text, textAlign: TextAlign.center, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),),
    );
  }
}
