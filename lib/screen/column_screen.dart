import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column'),
        backgroundColor: Colors.blue,
      ),
      // body: Container(
      //   color: Colors.yellow,
      //   child: const Column(
      //     // mainAxisAlignment: MainAxisAlignment.start,
      //     // mainAxisAlignment: MainAxisAlignment.center,
      //     mainAxisAlignment: MainAxisAlignment
      //         .spaceEvenly, //spaceBetween,spaceAround, spaceEvenly

      //     children: [
      //       Icon(Icons.star, size: 50),
      //       Icon(Icons.star, size: 50),
      //       Icon(Icons.star, size: 50),
      //       Icon(Icons.star, size: 50),
      //     ],
      //   ),
      // ),
      body: Container(
        width: double.infinity,
        color: Colors.yellow,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisAlignment:
              MainAxisAlignment.center, //spaceBetween,spaceAround, spaceEvenly
          crossAxisAlignment:
              CrossAxisAlignment.stretch, //end, start, center, stretch
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {},
                child: const Text('Button 1')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {},
                child: const Text('Button 2')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {},
                child: const Text('Button 3')),
            // Spacer(), // will take all space
          ],
        ),
      ),
    );
  }
}

// class _ColumnScreenState extends State<ColumnScreen> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }

// }
