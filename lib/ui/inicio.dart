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
    Future<void> openURL() async {
      const url = 'https://www.facebook.com/prefeiturasrs';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        /// Não è possível abrir a URL
      }
    }

    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: ListView(
        children: [
          Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(
                  0xFF252525,
                ),
                border: Border.all(
                    width: 1.0,
                    color: Color(
                      0xFF252525,
                    )),
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.only(top: 20, bottom: 15, left: 40, right: 40),
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Icon(
                    Icons.pin_drop_outlined,
                    color: Colors.white,
                    size: 18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("SANTA RITA DO SAPUCAÍ",
                      style: TextStyle(fontSize: 14, color: Colors.white)),
                ],
              )),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              "ÚLTIMAS NOTÍCIAS",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                //fontWeight: FontWeight.bold,
                color: Color(0xFF03A688),
              ),
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(
                  0xFF252525,
                ),
                border: Border.all(
                    width: 1.0,
                    color: Color(
                      0xFF252525,
                    )),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Icon(
                    Icons.new_releases,
                    color: Color(0xFF03A688),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "PROGRAMA DE VACINAÇÃO CONTRA COVID-19 PARA TRABALHADORES DA EDUCAÇÃO",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: (Image.asset(
                      "./assets/img2.jpg",
                      color: Colors.black.withOpacity(0.3),
                      colorBlendMode: BlendMode.softLight,
                    )),
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
                          color: Color(0xFF03A688),
                          size: 36.0,
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(
                  0xFF252525,
                ),
                border: Border.all(
                    width: 1.0,
                    color: Color(
                      0xFF252525,
                    )),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Icon(
                    Icons.new_releases,
                    color: Color(0xFF03A688),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "CONHEÇA O COMITÊ EXTRAORDINÁRIO DE COMBATE AO COVID-19 EM SANTA RITA",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        "./assets/img3.jpg",
                        color: Colors.black.withOpacity(0.3),
                        colorBlendMode: BlendMode.softLight,
                      )),
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
                          color: Color(0xFF03A688),
                          size: 36.0,
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10),
              alignment: Alignment(0.0, 0.0),
              decoration: BoxDecoration(
                color: Color(
                  0xFF252525,
                ),
                border: Border.all(
                    width: 1.0,
                    color: Color(
                      0xFF252525,
                    )),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Icon(
                    Icons.new_releases,
                    color: Color(0xFF03A688),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "SECRETARIA DO ESTADO SUSPENDE VACINAÇÃO DE GRÁVIDAS E PUÉRPERAS COM ASTRAZENICA",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        "./assets/img4.2.jpg",
                        color: Colors.black.withOpacity(0.3),
                        colorBlendMode: BlendMode.softLight,
                      )),
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
                          color: Color(0xFF03A688),
                          size: 36.0,
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10),
              alignment: Alignment(0.0, 0.0),
              decoration: BoxDecoration(
                color: Color(
                  0xFF252525,
                ),
                border: Border.all(
                    width: 1.0,
                    color: Color(
                      0xFF252525,
                    )),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Icon(
                    Icons.new_releases,
                    color: Color(0xFF03A688),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "PREFEITURA MUNICIPAL REALIZA DESINFECÇÃO DE VIAS PÚBLICAS EM SANTA RITA DO SAPUCAÍ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        "./assets/img1.jpg",
                        color: Colors.black.withOpacity(0.3),
                        colorBlendMode: BlendMode.softLight,
                      )),
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
                          color: Color(0xFF03A688),
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
      const url = 'https://www.facebook.com/prefeiturasrs';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        /// Não è possível abrir a URL
      }
    }

    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: ListView(
        children: [
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                  decoration: BoxDecoration(
                    color: Color(
                      0xFF252525,
                    ),
                    border: Border.all(
                        width: 1.0,
                        color: Color(
                          0xFF252525,
                        )),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin:
                      EdgeInsets.only(top: 20, bottom: 15, left: 10, right: 10),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Icon(
                        Icons.pin_drop_outlined,
                        color: Colors.white,
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("SANTA RITA DO SAPUCAÍ",
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                    ],
                  )),
            ],
          ),
          SizedBox(
            height: 65,
          ),
          Container(
            margin: EdgeInsets.only(left: 140),
            child: Text(
              "ÚLTIMAS NOTÍCIAS",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xFF03A688),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            alignment: WrapAlignment.spaceEvenly,
            spacing: 2,
            children: [
              Container(
                  height: MediaQuery.of(context).size.width / 2.4,
                  width: MediaQuery.of(context).size.width / 2.9,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  alignment: Alignment(0.0, 0.0),
                  padding: EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 20.0),
                  decoration: BoxDecoration(
                    color: Color(
                      0xFF252525,
                    ),
                    border: Border.all(width: 0.0, color: Color(0xFF252525)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.new_releases,
                        color: Color(0xFF03A688),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                        "PROGRAMA DE VACINAÇÃO CONTRA COVID-19 PARA TRABALHADORES DA EDUCAÇÃO",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF03A688),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: (Image(
                              image: AssetImage("./assets/img2.jpg"),
                              alignment: Alignment.center,
                              width: 450,
                            )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Na manhã de hoje, 07 de junho, ocorreu no gabinete do prefeito uma reunião com representantes das áreas da saúde e educação do município. \nO objetivo foi avaliar e analisar as novas diretrizes para a vacinação do grupo de trabalhadores da Educação. \nFicou definido que nosso município seguirá o cronograma de vacinação da Secretaria de Estado de Saúde, que determina que a vacinação dos profissionais da educação, ocorrerá simultaneamente com a imunização das pessoas com comorbidades.",
                        style: TextStyle(fontSize: 14, color: Colors.grey[100]),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              openURL();
                            },
                            child: Row(
                              children: [
                                Text(
                                  'LEIA',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF03A688),
                                  ),
                                ),
                                Icon(
                                  Icons.navigate_next_rounded,
                                  color: Color(0xFF03A688),
                                  size: 24.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              Container(
                  height: MediaQuery.of(context).size.width / 2.4,
                  width: MediaQuery.of(context).size.width / 2.9,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  alignment: Alignment(0.0, 0.0),
                  padding: EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 20.0),
                  decoration: BoxDecoration(
                    color: Color(
                      0xFF252525,
                    ),
                    border: Border.all(width: 0.0, color: Color(0xFF252525)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.new_releases,
                        color: Color(0xFF03A688),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                        "SECRETARIA DO ESTADO SUSPENDE VACINAÇÃO DE GRÁVIDAS E PUÉRPERAS COM ASTRAZENICA",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF03A688),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: (Image(
                              image: AssetImage("./assets/img4.2.jpg"),
                              alignment: Alignment.center,
                              width: 450,
                            )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "A Secretaria do Estado de Saúde informa que está suspensa a vacinação para puérperas e gestantes com comorbidades com a Vacina da Astrazenica. Assim que forem enviadas doses de vacinas de outros laboratórios, a vacinação para puérperas e gestantes com comorbidades será retomada. \nPor enquanto, até a data desta publicação, não foram enviadas doses de outros laboratórios para o município de Santa Rita do Sapucaí. ",
                        style: TextStyle(fontSize: 14, color: Colors.grey[100]),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              openURL();
                            },
                            child: Row(
                              children: [
                                Text(
                                  'LEIA',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF03A688),
                                  ),
                                ),
                                Icon(
                                  Icons.navigate_next_rounded,
                                  color: Color(0xFF03A688),
                                  size: 24.0,
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
          SizedBox(
            height: 15,
          ),
          Wrap(
            alignment: WrapAlignment.spaceEvenly,
            spacing: 2,
            children: [
              Container(
                  height: MediaQuery.of(context).size.width / 2.2,
                  width: MediaQuery.of(context).size.width / 2.9,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  alignment: Alignment(0.0, 0.0),
                  padding: EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 20.0),
                  decoration: BoxDecoration(
                    color: Color(
                      0xFF252525,
                    ),
                    border: Border.all(width: 1.0, color: Color(0xFF252525)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.new_releases,
                        color: Color(0xFF03A688),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        "CONHEÇA O COMITÊ EXTRAORDINÁRIO DE COMBATE AO COVID-19 EM SANTA RITA",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF03A688),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: (Image(
                              image: AssetImage("./assets/img3.jpg"),
                              alignment: Alignment.center,
                              width: 450,
                            )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "O Comitê de Gestão e Acompanhamento de Emergência em Saúde COVID-19 de Santa Rita do Sapucaí é representado pelas iniciativas pública, privada e de classes para que as decisões tomadas para o enfrentamento da COVID-19 no município possam ser analisadas de forma abrangente. \n\nConheça as frentes que fazem parte do Comitê: \n\n1. Prefeitura Municipal de Santa Rita do Sapucaí\n2. Câmara Municipal de Vereadores\n3. Secretaria Municipal de Saúde\n4. Secretaria Municipal de Cultura, Esporte, Lazer e Turismo \n5. Secretária Municipal de Desenvolvimento social \n6. Secretária Municipal de Educação",
                        style: TextStyle(fontSize: 14, color: Colors.grey[100]),
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
                            child: Row(
                              children: [
                                Text(
                                  'LEIA',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF03A688),
                                  ),
                                ),
                                Icon(
                                  Icons.navigate_next_rounded,
                                  color: Color(0xFF03A688),
                                  size: 24.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              Container(
                  height: MediaQuery.of(context).size.width / 2.2,
                  width: MediaQuery.of(context).size.width / 2.9,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  alignment: Alignment(0.0, 0.0),
                  padding: EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 20.0),
                  decoration: BoxDecoration(
                    color: Color(
                      0xFF252525,
                    ),
                    border: Border.all(width: 1.0, color: Color(0xFF252525)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.new_releases,
                        color: Color(0xFF03A688),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        "PREFEITURA MUNICIPAL REALIZA DESINFECÇÃO DE VIAS PÚBLICAS EM SANTA RITA DO SAPUCAÍ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF03A688),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: (Image(
                              image: AssetImage("./assets/img1.jpg"),
                              alignment: Alignment.center,
                              width: 450,
                            )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "A Prefeitura Municipal continua realizando a desinfecção dos locais públicos mais movimentados para diminuir o risco de contágio do Coronavírus – COVID 19, como medidas de cuidados extras de higienização para os locais públicos mais movimentados, transmissores do vírus em potencial. \nEste processo está sendo realizado com um produto recomendado pela ANVISA, um desinfetante e desengordurante de alto desempenho bastante utilizados mundialmente por diversos ramos da indústria farmacêutica e alimentícia, indicado como um princípio ativo para a desinfecção de ambientes. \nVários locais receberam o serviço: Rodoviária, Mercado Municipal, hospital, PSF’s (Unidades Básicas de Saúde), Praça, em frente aos bancos e pontos de circular.",
                        style: TextStyle(fontSize: 14, color: Colors.grey[100]),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 49,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              openURL();
                            },
                            child: Row(
                              children: [
                                Text(
                                  'LEIA',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF03A688),
                                  ),
                                ),
                                Icon(
                                  Icons.navigate_next_rounded,
                                  color: Color(0xFF03A688),
                                  size: 24.0,
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
        ],
      ),
    );
  }
}
