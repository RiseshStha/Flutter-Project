import 'package:batch32b/common/my_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Column(
      //   children: [
      //     Container(
      //       width: double.infinity,
      //       height: 600,
      //       decoration: const BoxDecoration(
      //         color: Colors.amber,
      //       ),
      //     ),
      //     Container(
      //       width: double.infinity,
      //       height: 600,
      //       decoration: const BoxDecoration(
      //         color: Colors.green,
      //       ),
      //     ),
      //   ],
      // ),
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: const BoxDecoration(
                color: Colors.amber,
              ),
              alignment: Alignment.center,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {
                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   const SnackBar(
                    //     content: Text('Button One is pressed'),
                    //     duration: Duration(seconds: 3),
                    //     behavior: SnackBarBehavior.floating,
                    //     backgroundColor: Colors.amber,
                    //   ),
                    // );
                    showMySnackBar(
                        message: "Button One is pressed",
                        context: context,
                        color: Colors.amber);
                  },
                  child: const Text(
                    '1',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  )),
            ),
          ),
          Expanded(
            // fit: FlexFit.loose, //will fit in available screen,
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              alignment: Alignment.center,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Button Two is pressed'),
                        duration: Duration(seconds: 3),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.red,
                      ),
                    );
                  },
                  child: const Text(
                    '2',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
