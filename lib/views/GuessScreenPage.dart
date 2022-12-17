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
  var tip = "";
  int randomNumber = 2;
  var tfGuess = TextEditingController();

  void initState() {
    super.initState();
    randomNumber = Random().nextInt(101);
    print(randomNumber);
  }

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
              "Tip : $tip",
              style: TextStyle(color: Colors.black38, fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: tfGuess,
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
                    setState(() {
                      counter--;
                    });
                    int Guess = int.parse(tfGuess.text);
                    print(Guess);
                    if (Guess == randomNumber) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultScreenPage(true)));
                      return;
                    }
                    if (Guess > randomNumber) {
                      tip = "decrease";
                    } else {
                      tip = "increase";
                    }
                    if (counter == 0) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultScreenPage(false)));
                    }
                    tfGuess.text = "";
                  },
                  child: Text("Guess THE Number")),
            )
          ],
        ),
      ),
    );
  }
}
