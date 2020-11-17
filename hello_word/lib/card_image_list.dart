import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/barbershop.jpeg"),
          CardImage("assets/img/plumbing.jpeg"),
          CardImage("assets/img/electrical.jpeg"),
          CardImage("assets/img/bricklayer.jpeg"),
          CardImage("assets/img/carpenter.jpeg")
        ],
      ),
    );
  }
  
}