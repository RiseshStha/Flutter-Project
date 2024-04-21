// import 'package:batch32b/screen/arithmetic_screen.dart';
import 'package:batch32b/screen/circle_screen.dart';
import 'package:batch32b/screen/dash_board_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ArithmeticScreen(),
      home: CircleScreen(),
    );
  }
}
