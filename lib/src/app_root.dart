import 'package:flutter/material.dart';
import 'package:password_generator/screens/home_screen.dart';
class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FullScreen(),
    );
  }
}
