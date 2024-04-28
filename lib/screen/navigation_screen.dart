import 'package:flutter/material.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 400,
        width: double.infinity,
        child: const Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceAround, //divde space properly
          children: [
            Column(
              children: [
                Icon(
                  Icons.call,
                ),
                SizedBox(
                  height: 8,
                ),
                Text('Call')
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              children: [
                Icon(
                  Icons.route,
                ),
                SizedBox(
                  height: 8,
                ),
                Text('Route')
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              children: [
                Icon(
                  Icons.share,
                ),
                Text('SHARE')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
