import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  DefaultTextField({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
          filled: true,
          hintText: text,
          hintStyle: const TextStyle(
              color: Colors.blue, fontWeight: FontWeight.bold),
          fillColor: Colors.black87,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          prefixIconColor: Colors.white,
        ),
        style: const TextStyle(
            color: Colors.blue, fontWeight: FontWeight.bold ,fontSize: 25),
    );
  }
}