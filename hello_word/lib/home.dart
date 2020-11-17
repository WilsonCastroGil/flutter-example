import 'package:flutter/material.dart';

import 'description_service.dart';
import 'review_list.dart';
import 'gradient_back.dart';
import 'header_appbar.dart';

import 'carpenter_list.dart';
import 'header_appBar_carpenter.dart';

class Home extends StatelessWidget {
  String nameServiceIntro = "Barbers";
  int starIntro = 4;
  String descriptionDummy =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionService(nameServiceIntro, starIntro, descriptionDummy),
            ReviewList(),
          ],
        ),
        //GradientBack('Panal App')
        HeaderAppBar()
      ],
    );
    /*Stack(
        children: [
          CarpenterList(),
          HeaderAppBarCarpenter()
        ],
    ; */
  }
}
