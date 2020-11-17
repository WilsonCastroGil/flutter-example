import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  /*List<NetworkImage> images = [
    NetworkImage('assets/img/barberZero.jpg'),
    NetworkImage('assets/img/barberOne.jpg'),
    NetworkImage('assets/img/barberTwo.jpg'),
    NetworkImage('assets/img/barberThree.jpg')
  ];  */
  List<String> names = [
    "José Barroco",
    "Maria Aguinaga",
    "Angel Angel",
    "Sofia Hidrobo"
  ];
  List<String> details = [
    "2 review 5 photos",
    "4 review 2 photos",
    "5 review 8 photos",
    "3 review 3 photos",
  ];
  List<String> comment = [
    "Excellent barber",
    "Very good",
    "He is funny",
    "He is good"
  ];
  List<double> stars = [3.5, 2, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          3,
          (x) => Review(
              "assets/img/barber$x.jpg", names[x], details[x], comment[x], stars[x])),
    );
  }
}
