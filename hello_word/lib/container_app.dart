import 'package:flutter/material.dart';
import 'home.dart';
import 'search.dart';
import 'profile.dart';

class ContainerApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return _ContainerApp();
  }
}

class _ContainerApp extends State<ContainerApp> {
  int indexTap = 0;

  final List<Widget> widgetsChildren = [Home(), Search(), Profile()];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.white, primaryColor: Colors.orangeAccent),
        child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), title: Text("")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text("")),
            ]),
      ),
    );
  }
}
