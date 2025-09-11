import 'package:flutter/material.dart';
import 'item.dart';
import 'style.dart';
import 'forecast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          )
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.blue[700],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Mirassol", style: cidadeStyle),
            Column(
              children: [
                Image.asset('images/sol.png'),
                Text("Sol", style: climaStyle),
                Text("36.8°C", style: temperaturaStyle),
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
            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Forecast("7AM", "nublado", "20°C"),
                  Forecast("8AM", "chuva", "20°C"),
                  Forecast("9AM", "sol", "20°C"),
                  Forecast("10AM", "sol", "20°C"),
                  Forecast("11AM", "chuva", "20°C"),
                  Forecast("12PM", "nublado", "20°C"),
                  Forecast("1PM", "chuva", "20°C"),
                ],
              ),
            )
          ]
        ),
      ),
    );
  }
}