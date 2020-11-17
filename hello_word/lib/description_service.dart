import 'package:flutter/material.dart';
import 'button_green.dart';

class DescriptionService extends StatelessWidget {
  String nameService;
  int stars;
  String descriptionService;

  DescriptionService(this.nameService, this.stars, this.descriptionService);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star_half = Container(
      margin: EdgeInsets.only(top: 320.0, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(top: 320.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    Widget star(bool withBorder) {
      return new Container(
      margin: EdgeInsets.only(top: 320.0, right: 3.0),
      child: Icon(
        withBorder ? Icons.star : Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );
    }

    Widget showStars(int numberStars){
            List<Widget> rowStars = [];
            List<Widget> rowStarsBorder = [];
            List(numberStars).forEach((i) => rowStars.add(star(true)));
            List((numberStars - 5).abs())
              .forEach((i) => rowStarsBorder.add(star(false)));
            List<Widget> finalStars = []..addAll(rowStars)..addAll(rowStarsBorder);
            return new Row(children: finalStars);
          }

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            nameService,
            style: TextStyle(fontFamily: "Lato", fontSize: 30.0, fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[showStars(4)],
          
        )
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionService,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)),
        textAlign: TextAlign.justify,
      ),
    );

    final service_content = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[title_stars, description, ButtonGreen("Navigate")],
      ),
    );

    return service_content;
  }
}
