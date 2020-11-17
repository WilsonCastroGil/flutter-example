import 'dart:ffi';

import 'package:flutter/material.dart';

class FloatingActionButtonOrange extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return _FloatingActionButtonOrange();
  }
}

class _FloatingActionButtonOrange extends State<FloatingActionButtonOrange> {
  bool _pressed = false;

  void onPressedFav() {
    /*Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text("Add your favorites..."))); */
    setState(() {
      _pressed = !this._pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFFFF8F00),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(this._pressed ? Icons.favorite : Icons.favorite_border),
    );
  }
}
