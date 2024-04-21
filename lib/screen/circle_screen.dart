import 'package:batch32b/model/area_of_circle_model.dart';
import 'package:flutter/material.dart';

class CircleScreen extends StatefulWidget {
  const CircleScreen({super.key});

  @override
  State<CircleScreen> createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<CircleScreen> {
  final mykey = GlobalKey<FormState>();
  double? radius;
  double? result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Area of Circle"),
        backgroundColor: Colors.green,
      ),
      body: Form(
        key: mykey,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter the Radius ";
                  }
                  return null;
                },
                onChanged: (value) {
                  radius = double.parse(value);
                },
                decoration: const InputDecoration(
                  labelText: "Enter the radius",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  if (mykey.currentState!.validate()) {
                    setState(() {
                      AreaOfCicrleModel a = AreaOfCicrleModel(radius: radius);

                      result = a.calculateAreaOfCircle().roundToDouble();
                    });
                  }
                },
                child: const Text("Calculate Area"),
              ),
              const SizedBox(height: 8),

              // Display informatuion
              Text(
                'Area of circle is : $result',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
