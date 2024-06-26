import 'package:batch32b/model/simpleinterest_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterest> {
// Delcare variables
  double? principle;
  double? rate;
  double? time;
  double result = 0;
  final mykey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Simple Interest"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Form(
        key: mykey,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // making form center
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                validator: (value) {
                  //using to validate the form field
                  if (value == null || value.isEmpty) {
                    return "Enter the Principle";
                  }
                  return null;
                },
                onChanged: (value) {
                  principle = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Principle ',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                validator: (value) {
                  //using to validate the form field
                  if (value == null || value.isEmpty) {
                    return "Enter the Rate";
                  }
                  return null;
                },
                onChanged: (value) {
                  rate = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Rate ',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                validator: (value) {
                  //using to validate the form field
                  if (value == null || value.isEmpty) {
                    return "Enter the Time ";
                  }
                  return null;
                },
                onChanged: (value) {
                  time = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Time ',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    if (mykey.currentState!.validate()) {
                      setState(() {
                        SimpleInterestModel si = SimpleInterestModel(
                            principle: principle, rate: rate, time: time);

                        result = si.simpleInterest();
                      });
                    }
                  },
                  child: const Text(
                    'Calculate Simple Interest',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Display informatuion
              Text(
                'Simple Interest is : $result',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'Simple ',
                  style: const TextStyle(
                    color: Colors.black45,
                    fontSize: 30,
                  ),
                  children: <TextSpan>[
                    const TextSpan(
                      text: 'interest is ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        backgroundColor: Color.fromARGB(255, 84, 76, 54),
                      ),
                    ),
                    TextSpan(
                      text: '$result',
                    ),
                  ],
                ),
              ),
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'M',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    TextSpan(text: "y name is Risesh"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
