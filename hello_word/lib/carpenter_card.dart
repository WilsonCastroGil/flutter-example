import 'package:flutter/material.dart';

class CarpenterCard extends StatelessWidget {
  final String pathImage;
  final String nameText;
  final String experienceText;
  final bool mailboxRead;

  CarpenterCard(
      this.pathImage, this.nameText, this.experienceText, this.mailboxRead);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final photo = Container(
      margin: EdgeInsets.only(left: 20.0),
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    final description = Container(
      margin: EdgeInsets.only(left: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8.0),
            child: Text(
              nameText,
              style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: "Oxygen",
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Text(
              experienceText,
              style: TextStyle(fontFamily: "Oxygen", color: Colors.black45),
            ),
          )
        ],
      ),
    );

    final mailButtonUnRead = Container(
      margin: EdgeInsets.only(right: 20.0),
      child: InkWell(
        onTap: () {
          Scaffold.of(context).showSnackBar(SnackBar(content: Text("Inbox")));
        },
        child: Container(
          margin: EdgeInsets.only(top: 10.0, left: 10.0),
          height: 45.0,
          width: 45.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0), color: Colors.red),
          child: Center(
            child: Icon(
              Icons.phone,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );

    final mailButtonRead = Container(
      margin: EdgeInsets.only(right: 20.0),
      child: InkWell(
        onTap: () {
          Scaffold.of(context).showSnackBar(SnackBar(content: Text("Inbox")));
        },
        child: Container(
          margin: EdgeInsets.only(top: 10.0, left: 10.0),
          height: 45.0,
          width: 45.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0), color: Colors.black12),
          child: Center(
            child: Icon(
              Icons.phone,
              color: Colors.black38,
            ),
          ),
        ),
      ),
    );

    return Column(
      children: [
        Row(
          children: [
            photo,
            description,
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
              ),
            ),
            mailboxRead ? mailButtonRead : mailButtonUnRead,
          ],
        ),
        const Divider(
          color: Colors.black12,
          height: 20.0,
          thickness: 1,
        )
      ],
    );
  }
}
