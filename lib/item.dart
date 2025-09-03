import 'package:flutter/material.dart';

class Item extends StatelessWidget {

  String image;
  String text;
  String value;

  Item(this.image, this.text, this.value);

  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('images/$image.png'),
        Text(text),
        Text(value)
      ]
    );
  }
}