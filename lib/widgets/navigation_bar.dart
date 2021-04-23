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

    if (width < 590) {
      return menuScreenPhone(context);
    } else if (width > 700) {
      return menuScreenDesktop(context);
    } else {
      return menuScreenDesktop(context);
    }
  }

  Container menuScreenPhone(BuildContext context) {
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
          IconButton(
            icon: new FaIcon(
              FontAwesomeIcons.whatsapp,
              size: 25,
              color: Colors.blue[100],
            ),
            onPressed: () => navKey.currentState.pushNamed('/whatsapp'),
          ),
        ],
      ),
    );
  }

  Container menuScreenDesktop(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: 200,
      height: MediaQuery.of(context).size.height,
      color: Colors.grey.withOpacity(0.4),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(children: [
              SizedBox(
                width: 10,
              ),
              NavigationItem(
                selected: index == 0,
                title: 'home',
                routeName: routeInicio,
                onHighlight: onHighlight,
              ),
              SizedBox(
                width: 100,
              ),
              Icon(
                Icons.navigate_next_rounded,
                size: 20,
                color: Colors.green,
              ),
            ]),
            Divider(),
            Row(children: [
              SizedBox(
                width: 10,
              ),
              NavigationItem(
                selected: index == 1,
                title: 'boletim',
                routeName: routeBoletim,
                onHighlight: onHighlight,
              ),
              SizedBox(
                width: 85,
              ),
              Icon(
                Icons.navigate_next_rounded,
                size: 20,
                color: Colors.green,
              ),
            ]),
            Divider(),
            Row(children: [
              SizedBox(
                width: 10,
              ),
              NavigationItem(
                selected: index == 2,
                title: 'vacinação',
                routeName: routeCalendario,
                onHighlight: onHighlight,
              ),
              SizedBox(
                width: 63,
              ),
              Icon(
                Icons.navigate_next_rounded,
                size: 20,
                color: Colors.green,
              ),
            ]),
            Divider(),
            Row(children: [
              SizedBox(
                width: 10,
              ),
              NavigationItem(
                selected: index == 3,
                title: 'whatsapp',
                routeName: routeWhatsapp,
                onHighlight: onHighlight,
              ),
              SizedBox(
                width: 64,
              ),
              Icon(
                Icons.navigate_next_rounded,
                size: 20,
                color: Colors.green,
              ),
            ]),
          ]),
    );
  }

  void onHighlight(String route) {
    switch (route) {
      case routeInicio:
        changeHighlight(0);
        break;
      case routeBoletim:
        changeHighlight(1);
        break;
      case routeCalendario:
        changeHighlight(2);
        break;
      case routeWhatsapp:
        changeHighlight(3);
        break;
    }
  }

  void changeHighlight(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }
}
