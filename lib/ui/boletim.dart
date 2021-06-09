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
    Color baseColor = Color(0xFF252525);
    var appBar = AppBar();

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.bar_chart,
            color: Color(
              0xFF252525,
            ),
          ),
          backgroundColor: Color(0xFF03A688),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return GraficosPage();
            }));
          }),
      body: ListView(
        children: [
          SizedBox(
            height: 70,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              "BOLETIM EPIDEMIOLÓGICO",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                //fontWeight: FontWeight.bold,
                color: Color(0xFF03A688),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              "(NÚMEROS TOTAIS ATÉ O ÚLTIMO MÊS)",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 13,
                //fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(
                0xFF252525,
              ),
              border: Border.all(width: 1.0, color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.signal_cellular_alt_outlined,
                        color: Color(0xFF03A688),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'NÚMERO DE INFECTADOS',
                        style: TextStyle(
                            fontSize: 16,
                            //fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: 0.5,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0),
                    height: (MediaQuery.of(context).size.height -
                            appBar.preferredSize.height) /
                        12,
                    decoration: BoxDecoration(
                      color: Color(0xFF03A688).withOpacity(0.3),
                      border: Border.all(width: 1.0, color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '2555',
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[100]),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.signal_cellular_alt_outlined,
                        color: Color(0xFF03A688),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'NÚMERO DE ÓBITOS',
                        style: TextStyle(
                            fontSize: 16,
                            //fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: 0.5,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0),
                    height: (MediaQuery.of(context).size.height -
                            appBar.preferredSize.height) /
                        12,
                    decoration: BoxDecoration(
                      color: Color(0xFF03A688).withOpacity(0.3),
                      border: Border.all(width: 1.0, color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '50',
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[100]),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.signal_cellular_alt_outlined,
                        color: Color(0xFF03A688),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'TAXA DE MORTALIDADE',
                        style: TextStyle(
                          fontSize: 16,
                          //fontWeight: FontWeight.bold,
                          color: Colors.white,
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
                      color: Color(0xFF03A688).withOpacity(0.3),
                      border: Border.all(width: 1.0, color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '1.96%',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey[100],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.signal_cellular_alt_outlined,
                        color: Color(0xFF03A688),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'NÚMERO DE RECUPERADOS',
                        style: TextStyle(
                            fontSize: 16,
                            //fontWeight: FontWeight.bold,
                            color: Colors.white),
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
                      color: Color(0xFF03A688).withOpacity(0.3),
                      border: Border.all(width: 1.0, color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '2243',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey[100],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.signal_cellular_alt_outlined,
                        color: Color(0xFF03A688),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'TAXA DE RECUPERAÇÃO',
                        style: TextStyle(
                            fontSize: 16,
                            //fontWeight: FontWeight.bold,
                            color: Colors.white),
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
                      color: Color(0xFF03A688).withOpacity(0.3),
                      border: Border.all(width: 1.0, color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '87.79%',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey[100],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Scaffold numbersScreenDesktop(BuildContext context) {
    Color baseColor = Colors.white;
    var appBar = AppBar();

    return Scaffold(
        backgroundColor: Color(0xFF121212),
        body: ListView(
          children: [
            SizedBox(
              height: 130,
            ),
            Container(
              margin: EdgeInsets.only(left: 140),
              child: Text(
                "BOLETIM EPIDEMIOLÓGICO",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF03A688),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 140),
              child: Text(
                "(NÚMEROS TOTAIS ATÉ O ÚLTIMO MÊS)",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 100,
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
                        'NÚMERO DE INFECTADOS',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF03A688),
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
                            0xFF252525,
                          ),
                          border: Border.all(
                            width: 1.0,
                            color: Color(
                              0xFF252525,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '2555',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[100],
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
                        'NÚMERO DE ÓBITOS',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF03A688),
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
                            0xFF252525,
                          ),
                          border: Border.all(
                            width: 1.0,
                            color: Color(
                              0xFF252525,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '50',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[100],
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
                        'TAXA DE MORTALIDADE',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF03A688),
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
                            0xFF252525,
                          ),
                          border: Border.all(
                            width: 1.0,
                            color: Color(
                              0xFF252525,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '1.96%',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[100],
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
            SizedBox(
              height: 100,
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
                        'NÚMERO DE RECUPERADOS',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF03A688),
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
                            0xFF252525,
                          ),
                          border: Border.all(
                            width: 1.0,
                            color: Color(
                              0xFF252525,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '2243',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[100],
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
                        'TAXA DE RECUPERAÇÃO',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF03A688),
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
                            0xFF252525,
                          ),
                          border: Border.all(
                            width: 1.0,
                            color: Color(
                              0xFF252525,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '87.79%',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[100],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.bar_chart),
            backgroundColor: Color(0xFF03A688),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return GraficosPage();
              }));
            }));
  }
}
