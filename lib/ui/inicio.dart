import 'package:coronasrs/constants/styles.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width > size.height ? size.height : size.width;

    if (width < 590) {
      return homeScreenPhone(context);
    }
    /* else if (width > 591 && width < 700) {
      return homeScreenTablet(context);
    } */
    else if (width > 700) {
      return homeScreenDesktop(context);
    } else {
      return homeScreenDesktop(context);
    }
  }

  Scaffold homeScreenPhone(BuildContext context) {
    Color baseColor = Color(0xFFF2F2F2);

    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
            color: baseColor,
            child: Image(
              image: AssetImage("./assets/banner.png"),
              fit: BoxFit.cover,
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
              alignment: Alignment(0.0, 0.0),
              //constraints: BoxConstraints.expand(height: 300),
              decoration: BoxDecoration(
                color: Color(
                  0xFFF2F2F2,
                ),
                border: Border.all(width: 1.0, color: Color(0xFFCFD8DC)),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: (Image(
                      image: AssetImage("./assets/img2.jpg"),
                    )),
                  ),
                  Text(
                    "Alunos se adaptam a aulas remotas durante a pandemia",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1565C0),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width / 1.5),
                      Icon(
                        Icons.navigate_next_rounded,
                        color: Color(0xFF1565C0),
                        size: 36.0,
                      ),
                    ],
                  ),
                ],
              )),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
              alignment: Alignment(0.0, 0.0),
              //constraints: BoxConstraints.expand(height: 300),
              decoration: BoxDecoration(
                color: Color(
                  0xFFF2F2F2,
                ),
                border: Border.all(width: 1.0, color: Color(0xFFCFD8DC)),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: (Image(
                      image: AssetImage("./assets/img3.jpg"),
                    )),
                  ),
                  Text(
                    "Santa Rita atinge 99,1% de eficácia na aplicação da 1ª dose da vacina contra Covid-19",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1565C0),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width / 1.5),
                      Icon(
                        Icons.navigate_next_rounded,
                        color: Color(0xFF1565C0),
                        size: 36.0,
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Scaffold homeScreenDesktop(BuildContext context) {
    Color baseColor = Color(0xFFF2F2F2);

    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
            color: baseColor,
            child: Image(
              image: AssetImage("./assets/bannercovid1.png"),
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Container(
                  height: MediaQuery.of(context).size.width / 2.8,
                  width: MediaQuery.of(context).size.width / 2.5,
                  margin: EdgeInsets.fromLTRB(40.0, 0.0, 20.0, 5.0),
                  alignment: Alignment(0.0, 0.0),
                  padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                  //constraints: BoxConstraints.expand(height: 300),
                  decoration: BoxDecoration(
                    color: Color(
                      0xFFF2F2F2,
                    ),
                    border: Border.all(width: 0.0, color: Color(0xFFCFD8DC)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: (Image(
                              image: AssetImage("./assets/img2.jpg"),
                              alignment: Alignment.center,
                              width: 600,
                            )),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Alunos se adaptam a aulas remotas",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1565C0),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "durante a pandemia",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1565C0),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Mesmo com as dificuldades enfrentadas, com conexões, adaptação às aulas por vídeos \n e plataformas novas de ensino na internet, os estudantes paraibanos, e em especial os \n de Santa Rita, estão aprovando o método on-line de continuar os estudos sem parar \n durante a Pandemia de coronavírus. Recentemente, a Paraíba foi avaliada em primeiro \n lugar no Brasil na realização de aulas remotas.",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Veja mais',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1565C0),
                            ),
                          ),
                          Icon(
                            Icons.navigate_next_rounded,
                            color: Color(0xFF1565C0),
                            size: 24.0,
                          ),
                        ],
                      ),
                    ],
                  )),
              Container(
                  height: MediaQuery.of(context).size.width / 2.8,
                  width: MediaQuery.of(context).size.width / 2.5,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
                  alignment: Alignment(0.0, 0.0),
                  padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                  //constraints: BoxConstraints.expand(height: 300),
                  decoration: BoxDecoration(
                    color: Color(
                      0xFFF2F2F2,
                    ),
                    border: Border.all(width: 1.0, color: Color(0xFFCFD8DC)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: (Image(
                              image: AssetImage("./assets/img3.jpg"),
                              alignment: Alignment.center,
                              width: 600,
                            )),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Santa Rita atinge 99,1% de eficácia na aplicação",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1565C0),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "da 1ª dose da vacina contra Covid-19",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1565C0),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "A campanha de vacinação contra a Covid-19 segue avançando em Santa Rita, com \n imunização sendo realizada de segunda a sábado em sete pontos espalhados pelo \n município. De acordo com dados atualizados da Secretaria de Saúde nesta quinta-feira \n (08), 99,1% das vacinas recebidas para a primeira dose já foram aplicadas, assim como \n 51,17% das destinadas à segunda dose.",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Veja mais',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1565C0),
                            ),
                          ),
                          Icon(
                            Icons.navigate_next_rounded,
                            color: Color(0xFF1565C0),
                            size: 24.0,
                          ),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
