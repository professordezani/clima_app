import 'package:flutter/material.dart';

class Forecast extends StatelessWidget {

  String time;
  String image;
  String temperature;

  Forecast(this.time, this.image, this.temperature);

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(time),
          Image.asset('images/$image.png', width: 48, height: 48,),
          Text(temperature)
        ],
      ),
    );
  }
}