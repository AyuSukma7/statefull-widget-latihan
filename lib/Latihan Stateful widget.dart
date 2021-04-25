
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 1;
void klik (){
  setState(() {
    number = number +1;
      
    });
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar : AppBar(title : Text("Latihan Statefull widget")),
        body: Center(
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Text(number.toString()), 
              MaterialButton(
                color: Colors.purpleAccent,
                height: 50,
                shape:RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
                onPressed: klik ,
                child : Text("Klik")
                ) 
            ],
          )
        )
      )
    );
  }
}