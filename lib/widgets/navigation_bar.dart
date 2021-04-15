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
    } else if (width > 591 && width < 700) {
      return menuScreenTablet(context);
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

  //TESTAR COM EMULADOR PARA DEFINIR OS ESTILOS
  Container menuScreenTablet(BuildContext context) {
    return Container(
      width: 60,
      height: MediaQuery.of(context).size.height * 0.5,
      color: Color(0xFF808080).withOpacity(0.5),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        onSurface: Colors.blue,
                      ),
                      onPressed: () => {
                        navKey.currentState.pushNamed('/inicio'),
                      },
                      child: Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.home,
                            size: 19,
                            color: Colors.blue,
                          ),
                          Text(
                            "Home Page",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        onSurface: Colors.blue,
                      ),
                      onPressed: () => {
                        navKey.currentState.pushNamed('/boletim'),
                      },
                      child: Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.virus,
                            size: 19,
                            color: Colors.blue,
                          ),
                          Text(
                            "Boletim COVID-19: Números",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        onSurface: Colors.blue,
                      ),
                      onPressed: () => {
                        navKey.currentState.pushNamed('/calendario'),
                      },
                      child: Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.calendar,
                            size: 19,
                            color: Colors.blue,
                          ),
                          Text(
                            "Calendário de Vacinação",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        onSurface: Colors.blue,
                      ),
                      onPressed: () => {
                        navKey.currentState.pushNamed('/whatsapp'),
                      },
                      child: Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.whatsapp,
                            size: 19,
                            color: Colors.blue,
                          ),
                          Text(
                            "Whatsapp",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  ]))
            ],
          ),
        ],
      ),
    );
  }

  Container menuScreenDesktop(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0, right: 10),
      alignment: Alignment.centerLeft,
      width: 200,
      height: MediaQuery.of(context).size.height,
      color: Color(0x17202A).withOpacity(0.8),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(children: [
              SizedBox(
                width: 10,
              ),
              FaIcon(
                FontAwesomeIcons.home,
                size: 20,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              NavigationItem(
                selected: index == 0,
                title: 'Home',
                routeName: routeInicio,
                onHighlight: onHighlight,
              ),
            ]),
            Divider(),
            Row(children: [
              SizedBox(
                width: 10,
              ),
              FaIcon(
                FontAwesomeIcons.virus,
                size: 20,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              NavigationItem(
                selected: index == 1,
                title: 'Boletim',
                routeName: routeBoletim,
                onHighlight: onHighlight,
              ),
            ]),
            Divider(),
            Row(children: [
              SizedBox(
                width: 10,
              ),
              FaIcon(
                FontAwesomeIcons.calendar,
                size: 20,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              NavigationItem(
                selected: index == 2,
                title: 'Vacinação',
                routeName: routeCalendario,
                onHighlight: onHighlight,
              ),
            ]),
            Divider(),
            Row(children: [
              SizedBox(
                width: 10,
              ),
              FaIcon(
                FontAwesomeIcons.whatsapp,
                size: 20,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              NavigationItem(
                selected: index == 3,
                title: 'Whatsapp',
                routeName: routeWhatsapp,
                onHighlight: onHighlight,
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
