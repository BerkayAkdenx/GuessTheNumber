import 'package:flutter/material.dart';
import 'package:guess_the_number/views/GuessScreenPage.dart';

class ResultScreenPage extends StatefulWidget {
  const ResultScreenPage({Key? key}) : super(key: key);

  @override
  State<ResultScreenPage> createState() => _ResultScreenPageState();
}

class _ResultScreenPageState extends State<ResultScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("images/mutlu_resim.png"),
            Text("You Win",
                style: TextStyle(color: Colors.black54, fontSize: 36)),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("RESTART AGAIN")),
            )
          ],
        ),
      ),
    );
  }
}
