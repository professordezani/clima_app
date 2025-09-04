import 'package:flutter/material.dart';
import 'item.dart';
import 'style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        )
      ),
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Mirassol", style: cityText,),
            Column(
              children: [
                Image.asset('images/sol.png'),
                Text("Sol", style: statusText),
                Text("36.8°C", style: temperatureText),
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