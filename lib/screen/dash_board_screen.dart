import 'package:batch32b/screen/arithmetic_screen.dart';
import 'package:batch32b/screen/simple_interest.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 135, 159, 135),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 129, 207, 132),
          title: const Text("Dashboard"),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .stretch, //will stretch the button through the screen
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ArithmeticScreen()),
                    );
                  },
                  child: const Text(
                    "Arithmetic Screen",
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      //style the button
                      backgroundColor: Colors.amberAccent,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        //replace the current page
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SimpleInterest()),
                      );
                    },
                    child: const Text("Simple Interest")),
              ],
            )));
  }
}
