import 'package:flutter/material.dart';
import 'carpenter_card.dart';

class CarpenterList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      margin: EdgeInsets.only(top: 90.0),
      child: ListView(
        children: [
          CarpenterCard('assets/img/barberZero.jpg', 'Juan Jose',
              'Experience: 03 years', true),
          CarpenterCard('assets/img/barberOne.jpg', 'Maria Jaramillo',
              'Experience: 05 years', false),
          CarpenterCard('assets/img/barberTwo.jpg', 'Lucas Gomez',
              'Experience: 01 years', true),
        ],
      ),
    );
  }
}
