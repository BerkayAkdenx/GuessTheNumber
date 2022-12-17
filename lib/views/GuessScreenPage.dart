import 'dart:math';
import 'package:flutter/material.dart';
import 'package:guess_the_number/views/ResultScreenPage.dart';

class GuessScreenPage extends StatefulWidget {
  const GuessScreenPage({Key? key}) : super(key: key);

  @override
  State<GuessScreenPage> createState() => _GuessScreenPageState();
}

class _GuessScreenPageState extends State<GuessScreenPage> {
  @override
  var counter = 5;

  var randomNumber = 2;
  var tfController;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guess"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("health : $counter",
                style: TextStyle(color: Colors.redAccent, fontSize: 36)),
            Text(
              "Tip : increase/decrease",
              style: TextStyle(color: Colors.black38, fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: tfController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(),
                  label: Text("Enter a number"),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultScreenPage()));
                  },
                  child: Text("Guess THE Number")),
            )
          ],
        ),
      ),
    );
  }
}
