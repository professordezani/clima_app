import 'package:flutter/material.dart';
import 'item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Mirassol"),
            Column(
              children: [
                Image.asset('images/sol.png'),
                Text("Sol"),
                Text("36.8°C"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Item('umidade', 'Umidade', '52%'),
                Item('vento', 'Vento', '19km/h'),
                Item('sensacao', 'Sensação', '32°C'),
              ]
            ),
          ]
        ),
      ),
    );
  }
}