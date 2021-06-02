import 'package:coronasrs/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:coronasrs/ui/graficos.dart';

class BoletimPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width > size.height ? size.height : size.width;

    if (width < 722) {
      return numbersScreenPhone(context);
    } else if (width > 722) {
      return numbersScreenDesktop(context);
    } else {
      return numbersScreenDesktop(context);
    }
  }

  Scaffold numbersScreenPhone(BuildContext context) {
    Color baseColor = Color(0xFFF2F2F2);
    var appBar = AppBar();

    return Scaffold(
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0),
              color: baseColor,
              child: Image(
                image: AssetImage("./assets/bannerboletim.png"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Número de Infectados',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.5,
              child: Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
                height: (MediaQuery.of(context).size.height -
                        appBar.preferredSize.height) /
                    12,
                decoration: BoxDecoration(
                  color: Color(
                    0xFFF2F2F2,
                  ),
                  border: Border.all(width: 1.0, color: Color(0xFFCFD8DC)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '193',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Número de Óbitos',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.5,
              child: Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
                height: (MediaQuery.of(context).size.height -
                        appBar.preferredSize.height) /
                    12,
                decoration: BoxDecoration(
                  color: Color(
                    0xFFF2F2F2,
                  ),
                  border: Border.all(width: 1.0, color: Color(0xFFCFD8DC)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '34',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Taxa de Mortalidade',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.5,
              child: Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
                height: (MediaQuery.of(context).size.height -
                        appBar.preferredSize.height) /
                    12,
                decoration: BoxDecoration(
                  color: Color(
                    0xFFF2F2F2,
                  ),
                  border: Border.all(width: 1.0, color: Color(0xFFCFD8DC)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '2%',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.bar_chart),
            backgroundColor: Colors.green,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return GraficosPage();
              }));
            }));
  }

  Scaffold numbersScreenDesktop(BuildContext context) {
    Color baseColor = Colors.white;
    var appBar = AppBar();

    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0),
              color: baseColor,
              child: Image(
                image: AssetImage("./assets/bannerboletim1.png"),
                fit: BoxFit.cover,
              ),
            ),
            Wrap(
              spacing: 160,
              alignment: WrapAlignment.center,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Número de Infectados',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                        // padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                        height: (MediaQuery.of(context).size.height -
                                appBar.preferredSize.height) /
                            12,
                        width: MediaQuery.of(context).size.width / 6,
                        decoration: BoxDecoration(
                          color: Color(
                            0xFFF2F2F2,
                          ),
                          border:
                              Border.all(width: 1.0, color: Color(0xFFCFD8DC)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '193',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Número de Óbitos',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                        height: (MediaQuery.of(context).size.height -
                                appBar.preferredSize.height) /
                            12,
                        width: MediaQuery.of(context).size.width / 6,
                        decoration: BoxDecoration(
                          color: Color(
                            0xFFF2F2F2,
                          ),
                          border:
                              Border.all(width: 1.0, color: Color(0xFFCFD8DC)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '34',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Taxa de Mortalidade',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                        height: (MediaQuery.of(context).size.height -
                                appBar.preferredSize.height) /
                            12,
                        width: MediaQuery.of(context).size.width / 6,
                        decoration: BoxDecoration(
                          color: Color(
                            0xFFF2F2F2,
                          ),
                          border:
                              Border.all(width: 1.0, color: Color(0xFFCFD8DC)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '2%',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.bar_chart),
            backgroundColor: Colors.green,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return GraficosPage();
              }));
            }));
  }
}
