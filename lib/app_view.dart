import 'package:coronasrs/routes/routes.dart';
import 'package:flutter/material.dart';

import 'widgets/navigation_bar.dart';

class AppView extends StatefulWidget {
  final Widget child;

  const AppView({@required this.child});

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  bool _isVisible = true;
  bool switchValue = false;

  void showMenuOptions() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width > size.height ? size.height : size.width;

    if (width < 722) {
      return appViewPhone(context);
    } else if (width > 722) {
      return appViewDesktop(context);
    } else {
      return appViewDesktop(context);
    }
  }

  Scaffold appViewPhone(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
              title: Container(
                alignment: Alignment.topLeft,
                // margin: EdgeInsets.fromLTRB(0, 0.0, 10.0, 0.0),
                child: Image(
                  image: AssetImage("./assets/coronaalert.png"),
                  // fit: BoxFit.fitHeight
                  // width: 272,
                  height: 50,
                  //492 x 247
                ),
              ),
              actions: <Widget>[
                IconButton(
                  key: Key('FaleConoscoButton'),
                  icon: Icon(
                    Icons.mail_outline_outlined,
                    color: Color(0xFF03A688),
                  ),
                  onPressed: () =>
                      navKey.currentState.pushNamed('/faleconosco'),
                )
              ]),
        ),
        body: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: widget.child),
              Visibility(
                visible: _isVisible,
                child: NavigationBar(),
              ),
            ]));
  }

  Scaffold appViewDesktop(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            title: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(0, 0.0, 10.0, 0.0),
              child: Image(
                image: AssetImage("./assets/coronaalert.png"),
                // fit: BoxFit.fitHeight
                // width: 272,
                height: 60,
                //492 x 247
              ),
            ),
          ),
        ),
        body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Visibility(
                visible: _isVisible,
                child: NavigationBar(),
              ),
              Expanded(child: widget.child)
            ]));
  }
}
