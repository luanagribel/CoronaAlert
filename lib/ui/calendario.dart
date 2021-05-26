import 'package:coronasrs/constants/styles.dart';
import 'package:flutter/material.dart';

class CalendarioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width > size.height ? size.height : size.width;

    if (width < 722) {
      return calendScreenPhone(context);
    } else if (width > 722) {
      return calendScreenDesktop(context);
    } else {
      return calendScreenDesktop(context);
    }
  }

  Scaffold calendScreenPhone(BuildContext context) {
    Color baseColor = Colors.white;

    var center = Alignment.center;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
            color: baseColor,
            child: Image(
              image: AssetImage("./assets/calendMobile.png"),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
            alignment: Alignment(0.0, 0.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1.0, color: Colors.white),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: (Image(
                  image: AssetImage("./assets/vacinometro.jpg"),
                )),
              ),
            ]),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            alignment: Alignment(0.0, 0.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1.0, color: Colors.white),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.contact_support,
                  color: Colors.blue[700],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Foi o município quem determinou a ordem dos grupos a serem vacinados?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1565C0),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Não, os grupos prioritários e a ordem em que eles serão vacinados foram definidos pelo Ministério da Saúde, e pela Secretaria do Estado de Saúde de Minas Gerais, por meio da Deliberação CIB-SUS/MG 3314, de 29 de janeiro de 2021.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ]),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            alignment: Alignment(0.0, 0.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1.0, color: Colors.white),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.contact_support,
                  color: Colors.blue[700],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Qual o grupo prioritário em que estamos hoje no município?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1565C0),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Grupo de comorbidades: Pessoas com Síndrome de Down (todos acima de 18 anos)",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Renal crônico: Que faz hemodiálise e diálise (todos acima de 18 anos)",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Demais Comorbidades: de 59 a 55 anos.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "(Grupo em anexo. Pessoas com deficiência cadastradas no BPC: de 59 a 55 anos.)",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Nota: Gestantes e Puérperas suspensão a vacinação com a vacina do Laboratório Fio Cruz/ Astrazenica, de acordo com o ofício em anexo.O Município recebeu apenas o laboratório Fiocruz/Astrazenica, por esse motivo a suspensão da vacina para Gestantes e Puérperas.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ]),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            alignment: Alignment(0.0, 0.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1.0, color: Colors.white),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.contact_support,
                  color: Colors.blue[700],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Como posso realizar o agendamento para os idosos acima de 60 – 64?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1565C0),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Caso algum idoso nesta faixa de idade ainda não tenha recebido a vacina, solicitamos que a família, ou amigos procurem o Posto de Saúde em que o idoso for registrado, ou o posto mais próximo, de acordo com seu bairro para saber quais os horários disponíveis e se a vacina será feita em domicílio, ou não.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Scaffold calendScreenDesktop(BuildContext context) {
    Color baseColor = Colors.white;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
            color: baseColor,
            child: Image(
              image: AssetImage("./assets/calendDesk.png"),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
            alignment: Alignment(0.0, 0.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1.0, color: Color(0xFFCFD8DC)),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: (Image(
                  image: AssetImage("./assets/vacinometro.jpg"),
                )),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
