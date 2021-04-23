import 'package:coronasrs/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:coronasrs/ui/graficos.dart';

class BoletimPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width > size.height ? size.height : size.width;

    if (width < 590) {
      return numbersScreenPhone(context);
    } else if (width > 700) {
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
                return Graficos();
              }));
            }));
  }

  Scaffold numbersScreenDesktop(BuildContext context) {
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
              image: AssetImage("./assets/bannerboletim1.png"),
              fit: BoxFit.cover,
            ),
          ),
          Row(children: [
            SizedBox(
              width: 180,
            ),
            Container(
              child: Text(
                'Número de Infectados',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(
              width: 200,
            ),
            Container(
                child: Text(
              'Número de Óbitos',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )),
            SizedBox(
              width: 210,
            ),
            Container(
                child: Text(
              'Taxa de Mortalidade',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ))
          ]),
          Row(children: [
            Container(
              margin: EdgeInsets.fromLTRB(150.0, 10.0, 0.0, 0.0),
              height: (MediaQuery.of(context).size.height -
                      appBar.preferredSize.height) /
                  12,
              width: MediaQuery.of(context).size.width / 6,
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
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(130.0, 10.0, 0.0, 0.0),
              height: (MediaQuery.of(context).size.height -
                      appBar.preferredSize.height) /
                  12,
              width: MediaQuery.of(context).size.width / 6,
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
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(120.0, 10.0, 0.0, 0.0),
              height: (MediaQuery.of(context).size.height -
                      appBar.preferredSize.height) /
                  12,
              width: MediaQuery.of(context).size.width / 6,
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
            )
          ]),
        ],
      ),
    );
  }
}
