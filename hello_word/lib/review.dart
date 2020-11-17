import 'package:flutter/material.dart';
import 'rating.dart';

class Review extends StatelessWidget {
  final String pathImage;
  final String userName;
  final String details;
  final String comment;
  final double pointStars;
  double _spacing = 5.0;

  Review(this.pathImage, this.userName, this.details, this.comment, this.pointStars);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _photo(),
        _userDetails(),
      ],
    );
  }

  Widget userComment() {
    return Container(
      margin: EdgeInsets.only(left: 20.0, top: _spacing),
      child: Text(
        comment,
        style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 17.0,
            color: Colors.black,
            fontWeight: FontWeight.w900),
      ),
    );
  }

  Widget userInfo() {
    return Container(
      margin: EdgeInsets.only(left: 20.0, top: _spacing),
      child: Text(
        details,
        style: TextStyle(
            fontFamily: 'Lato', fontSize: 17.0, color: Color(0xFFa3a5a7)),
      ),
    );
  }

  Widget userInfoAndStars() {
    return Row(
      children: <Widget>[userInfo(), Rating.drawStars(pointStars, 0, 3.0)],
    );
  }

  Widget _userName() {
    return Container(
      margin: EdgeInsets.only(left: 20.0, top: _spacing),
      child: Text(
        userName,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 17.0,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w900,
            color: Colors.black),
      ),
    );
  }

  Widget _userDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[_userName(), userInfoAndStars(), userComment()],
    );
  }

  Widget _photo() {
    return Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      child: CircleAvatar(
        backgroundImage: NetworkImage(pathImage),
      ),
    );
  }
  
}
