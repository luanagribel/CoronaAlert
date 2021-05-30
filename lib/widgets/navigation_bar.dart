import 'package:coronasrs/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'navigation_item.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width > size.height ? size.height : size.width;

    setState(() {
      print(width);
    });

    return menuScreen(context);
  }

  Container menuScreen(BuildContext context) {
    return Container(
      width: 50,
      height: MediaQuery.of(context).size.height,
      color: Color(0x17202A).withOpacity(0.8),
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          IconButton(
            icon: new FaIcon(
              FontAwesomeIcons.home,
              size: 25,
              color: Colors.blue[100],
            ),
            onPressed: () => navKey.currentState.pushNamed('/inicio'),
          ),
          Divider(
            color: Colors.blue,
          ),
          IconButton(
            icon: new FaIcon(
              FontAwesomeIcons.virus,
              size: 25,
              color: Colors.blue[100],
            ),
            onPressed: () => navKey.currentState.pushNamed('/boletim'),
          ),
          Divider(
            color: Colors.blue,
          ),
          IconButton(
            icon: new FaIcon(
              FontAwesomeIcons.calendar,
              size: 25,
              color: Colors.blue[100],
            ),
            onPressed: () => navKey.currentState.pushNamed('/calendario'),
          ),
          Divider(
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
