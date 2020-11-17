import 'package:flutter/material.dart';
import 'wave_clipper.dart';

class HeaderAppBarCarpenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final iconMenu = Container(
      margin: EdgeInsets.only(top: 28.0, right: 5.0),
      width: 50.0,
      height: 50.0,
      child: Icon(
        Icons.menu,
        size: 60.0,
        color: Colors.white,
      ),
    );

    /*final userPhoto = Container(
      margin: EdgeInsets.only(top: 28.0, right: 5.0),
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/img/logo-png.png')
        )
      ),
    );  */

    final textInfo = Container(
      child: ClipPath(
        // upper clippath with less height
        clipper: WaveClipper(), // set our custom wave clipper
        child: Container(
          height: 140.0,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFFEF6C00), Color(0xFFE65100)],
                  begin: FractionalOffset(0.2, 0.0),
                  end: FractionalOffset(1.0, 0.6),
                  stops: [0.0, 0.6],
                  tileMode: TileMode.clamp)),
          child: Text(
            "BARBERS",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: "Oxygen",
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );

    return Stack(
      children: <Widget>[textInfo, iconMenu, /*userPhoto*/],
    );
  }
}
