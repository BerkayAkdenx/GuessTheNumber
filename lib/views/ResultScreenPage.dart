import 'package:flutter/material.dart';
import 'package:guess_the_number/views/GuessScreenPage.dart';

class ResultScreenPage extends StatefulWidget {
  late bool result;// data transfer

  ResultScreenPage(this.result);

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
            widget.result ? Image.asset("images/happy_photo.png"):Image.asset("images/sad_photo.png"),//if widget.result is true ,read firt string data
           Text( widget.result ?  "You Win" : "You Lose",
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
