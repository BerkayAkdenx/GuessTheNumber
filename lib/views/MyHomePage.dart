import 'package:flutter/material.dart';
import 'package:guess_the_number/views/GuessScreenPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Guessing Game",
                style: TextStyle(color: Colors.black54, fontSize: 36)),
            Image.asset("images/dice_photo.png"),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GuessScreenPage()));
                  },
                  child: Text("START THE GAME")),
            )
          ],
        ),
      ),
    );
  }
}
