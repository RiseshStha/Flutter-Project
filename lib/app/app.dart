// import 'package:batch32b/screen/arithmetic_screen.dart';
import 'package:batch32b/screen/circle_screen.dart';
import 'package:batch32b/screen/column_screen.dart';
import 'package:batch32b/screen/container_screen.dart';
import 'package:batch32b/screen/dash_board_screen.dart';
import 'package:batch32b/screen/flexible_expanded_screen.dart';
import 'package:batch32b/screen/navigation_screen.dart';
import 'package:batch32b/screen/row_column_screen.dart';
import 'package:batch32b/screen/simple_interest.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ArithmeticScreen(),
      home: RowColumnScreen(),
      // home: FlexibleExpandedScreen(),
    );
  }
}
