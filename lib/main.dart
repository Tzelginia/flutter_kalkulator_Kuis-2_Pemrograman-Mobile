import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final nilai1 = TextEditingController();
  final nilai2 = TextEditingController();
  final hasil = TextEditingController();

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("KUIS 2"),
        ),
        body: Column(children: [
          Container(
              child: Text("KALKULATOR",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 7, 143), fontSize: 25))),
          Container(
            child: TextField(
              decoration: InputDecoration(labelText: "Nilai 1  : "),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              controller: nilai1,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(labelText: "Nilai 2 :"),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              controller: nilai2,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(labelText: "Hasil  :"),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              controller: hasil,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 197, 7, 255),
                ),
                onPressed: () {
                  // Get value from textfield
                  var myController1 = int.parse(this.nilai1.text);
                  var myController2 = int.parse(this.nilai2.text);
                  // Calculate
                  var result = myController1 + myController2;
                  // Set value to textfield
                  hasil.text = result.toString();
                },
                child: Text("+"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 126, 28, 183),
                ),
                onPressed: () {
                  // Get value from textfield
                  var myController1 = int.parse(this.nilai1.text);
                  var myController2 = int.parse(this.nilai2.text);
                  // Calculate
                  var result = myController1 - myController2;
                  // Set value to textfield
                  hasil.text = result.toString();
                },
                child: Text("-"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 161, 13, 57),
                ),
                onPressed: () {
                  // Get value from textfield
                  var myController1 = int.parse(this.nilai1.text);
                  var myController2 = int.parse(this.nilai2.text);
                  // Calculate
                  var result = myController1 * myController2;
                  // Set value to textfield
                  hasil.text = result.toString();
                },
                child: Text("x"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 75, 27, 94),
                ),
                onPressed: () {
                  // Get value from textfield
                  var myController1 = int.parse(this.nilai1.text);
                  var myController2 = int.parse(this.nilai2.text);
                  // Calculate
                  var result = myController1 / myController2;
                  // Set value to textfield
                  hasil.text = result.toString();
                },
                child: Text("/"),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
