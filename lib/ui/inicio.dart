import 'package:coronasrs/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width > size.height ? size.height : size.width;

    if (width < 722) {
      return homeScreenPhone(context);
    } else if (width > 722) {
      return homeScreenDesktop(context);
    } else {
      return homeScreenDesktop(context);
    }
  }

  Scaffold homeScreenPhone(BuildContext context) {
    Color baseColor = Colors.white;

    Future<void> openURL() async {
      const url = 'https://pmsrs.mg.gov.br';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        /// Não è possível abrir a URL
      }
    }

    return Scaffold(
      backgroundColor: Colors.grey[200],
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
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
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
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1565C0),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      openURL();
                    },
                    child: Wrap(
                      alignment: WrapAlignment.end,
                      children: [
                        Icon(
                          Icons.navigate_next_rounded,
                          color: Color(0xFF1565C0),
                          size: 36.0,
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              alignment: Alignment(0.0, 0.0),
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
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1565C0),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    key: Key('onTap'),
                    onTap: () {
                      openURL();
                    },
                    child: Wrap(
                      alignment: WrapAlignment.end,
                      children: [
                        Icon(
                          Icons.navigate_next_rounded,
                          color: Color(0xFF1565C0),
                          size: 36.0,
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
            alignment: Alignment(0.0, 0.0),
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
                    image: AssetImage("./assets/img1.jpg"),
                  )),
                ),
              ],
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              alignment: Alignment(0.0, 0.0),
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
                      image: AssetImage("./assets/img4.jpg"),
                    )),
                  ),
                  Text(
                    "Mais de 16 mil doses de vacina foram aplicadas em Santa Rita",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1565C0),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      openURL();
                    },
                    child: Wrap(
                      alignment: WrapAlignment.end,
                      children: [
                        Icon(
                          Icons.navigate_next_rounded,
                          color: Color(0xFF1565C0),
                          size: 36.0,
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Scaffold homeScreenDesktop(BuildContext context) {
    Color baseColor = Color(0xFFF2F2F2);

    Future<void> openURL() async {
      const url = 'https://pmsrs.mg.gov.br';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        /// Não è possível abrir a URL
      }
    }

    return Scaffold(
      backgroundColor: Colors.grey[200],
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
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 2,
            children: [
              Container(
                  height: MediaQuery.of(context).size.width / 2.6,
                  width: MediaQuery.of(context).size.width / 2.3,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 80.0, 10.0),
                  alignment: Alignment(0.0, 0.0),
                  padding: EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 20.0),
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
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Alunos se adaptam a aulas remotas \ndurante a pandemia",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1565C0),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Mesmo com as dificuldades enfrentadas, com conexões, adaptação às aulas por vídeos e plataformas novas de ensino na internet, os estudantes paraibanos, e em especial os de Santa Rita, estão aprovando o método on-line de continuar os estudos sem parar durante a Pandemia de coronavírus. Recentemente, a Paraíba foi avaliada em primeiro lugar no Brasil na realização de aulas remotas.",
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: () {
                            openURL();
                          },
                          child: Wrap(
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
                        ),
                      ),
                    ],
                  )),
              Container(
                  height: MediaQuery.of(context).size.width / 2.6,
                  width: MediaQuery.of(context).size.width / 2.3,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  alignment: Alignment(0.0, 0.0),
                  padding: EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 20.0),
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
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Santa Rita atinge 99,1% de eficácia na aplicação da 1ª dose da vacina contra Covid-19",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1565C0),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "A campanha de vacinação contra a Covid-19 segue avançando em Santa Rita, com imunização sendo realizada de segunda a sábado em sete pontos espalhados pelo município. De acordo com dados atualizados da Secretaria de Saúde nesta quinta-feira (08), 99,1% das vacinas recebidas para a primeira dose já foram aplicadas, assim como 51,17% das destinadas à segunda dose.",
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              openURL();
                            },
                            child: Wrap(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    openURL();
                                  },
                                  child: Wrap(
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
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 2,
            children: [
              Container(
                  height: MediaQuery.of(context).size.width / 2.7,
                  width: MediaQuery.of(context).size.width / 2.3,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 80.0, 10.0),
                  alignment: Alignment(0.0, 0.0),
                  padding: EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 20.0),
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
                              image: AssetImage("./assets/img4.jpg"),
                              alignment: Alignment.center,
                              width: 600,
                            )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Mais de 16 mil doses de vacina foram aplicadas em Santa Rita",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1565C0),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "A vacinação contra a Covid-19 em Santa Rita continua avançando em números. Até este dia 01 de abril já foram aplicadas mais de 16 mil doses da vacina. A Secretaria de Saúde do município está realizando a imunização em cinco pontos fixos, no horário das 8h às 12h, e das 13h às 16h. São eles: PAM (centro), Barão do Abiay (Várzea Nova), Flávio Maroja (Alto das Populares), Padre Malagrida (Tibiri 2) e Marcos Moura 2 (Marcos Moura).",
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: () {
                            openURL();
                          },
                          child: Wrap(
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
                        ),
                      ),
                    ],
                  )),
              Container(
                  height: MediaQuery.of(context).size.width / 2.7,
                  width: MediaQuery.of(context).size.width / 2.3,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  alignment: Alignment(0.0, 0.0),
                  padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 15.0),
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
                              image: AssetImage("./assets/img1.jpg"),
                              alignment: Alignment.center,
                              height: 520,
                            )),
                          )
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
