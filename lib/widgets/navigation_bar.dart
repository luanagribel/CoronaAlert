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

    if (width < 722) {
      return menuScreenPhone(context);
    } else if (width > 722) {
      return menuScreenDesktop(context);
    } else {
      return menuScreenDesktop(context);
    }
  }

  Column menuScreenPhone(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          color: Color(0x116B5B).withOpacity(0.3),
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 65,
            children: [
              Container(
                child: IconButton(
                  icon: new FaIcon(
                    FontAwesomeIcons.home,
                    size: 25,
                    color: Colors.grey[100],
                  ),
                  onPressed: () => navKey.currentState.pushNamed('/inicio'),
                ),
              ),
              Container(
                child: IconButton(
                  icon: new FaIcon(
                    FontAwesomeIcons.virus,
                    size: 25,
                    color: Colors.grey[100],
                  ),
                  onPressed: () => navKey.currentState.pushNamed('/boletim'),
                ),
              ),
              Container(
                child: IconButton(
                  icon: new FaIcon(
                    FontAwesomeIcons.calendar,
                    size: 25,
                    color: Colors.grey[100],
                  ),
                  onPressed: () => navKey.currentState.pushNamed('/calendario'),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Container menuScreenDesktop(BuildContext context) {
    return Container(
      width: 70,
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.fromLTRB(0, 120, 0, 0),
      padding: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Color(0x116B5B).withOpacity(0.3),
        border: Border.all(width: 0.0, color: Color(0x17202A).withOpacity(0.5)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          IconButton(
            icon: new FaIcon(
              FontAwesomeIcons.home,
              size: 35,
              color: Colors.grey[50],
            ),
            onPressed: () => navKey.currentState.pushNamed('/inicio'),
          ),
          SizedBox(
            height: 30,
          ),
          IconButton(
            icon: new FaIcon(
              FontAwesomeIcons.chartLine,
              size: 35,
              color: Colors.grey[50],
            ),
            onPressed: () => navKey.currentState.pushNamed('/boletim'),
          ),
          SizedBox(
            height: 30,
          ),
          IconButton(
            icon: new FaIcon(
              FontAwesomeIcons.solidCalendarAlt,
              size: 35,
              color: Colors.grey[50],
            ),
            onPressed: () => navKey.currentState.pushNamed('/calendario'),
          ),
          SizedBox(
            height: 30,
          ),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.mailBulk,
              size: 35,
              color: Colors.grey[50],
            ),
            onPressed: () => navKey.currentState.pushNamed('/faleconosco'),
          ),
        ],
      ),
    );
  }
}
