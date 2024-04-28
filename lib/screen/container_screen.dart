import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      // body: Center(
      //   child: SafeArea(
      //     child: Container(
      //       width: 200,
      //       height: 200,
      //       alignment: Alignment.center,
      //       decoration: BoxDecoration(
      //         shape: BoxShape.circle, // for making container circle
      //         color: Colors.amberAccent,
      //         border: Border.all(
      //           color: Colors.black,
      //           width: 2,
      //         ),
      //       ), // it's child will be in center
      //       child: const Text('I am a container'),
      //     ),
      //   ),
      // ),
      body: Center(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              // for making container circle
              color: Colors.amberAccent,
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ), // it's child will be in center
            child: const Text('I am a container'),
          ),
        ),
      ),
    );
  }
}
