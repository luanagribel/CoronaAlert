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
    Color baseColor = Color(
      0xFF252525,
    );
    return Scaffold(
      key: Key('Key'),
      backgroundColor: Color(0xFF121212),
      body: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              "VACINÔMETRO",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                //fontWeight: FontWeight.bold,
                color: Color(0xFF03A688),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
            padding: EdgeInsets.all(10),
            alignment: Alignment(0.0, 0.0),
            decoration: BoxDecoration(
              color: baseColor,
              border: Border.all(width: 1.0, color: baseColor),
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
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              "DÚVIDAS FREQUENTES",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                //fontWeight: FontWeight.bold,
                color: Color(0xFF03A688),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
            alignment: Alignment(0.0, 0.0),
            decoration: BoxDecoration(
              color: baseColor,
              border: Border.all(width: 1.0, color: baseColor),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(children: [
              Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.contact_support,
                  color: Color(0xFF03A688),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "FOI O MUNICÍPIO QUEM DETERMINOU A ORDEM DOS GRUPOS A SEREM VACINADOS?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                // margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFF03A688).withOpacity(0.3),
                  border: Border.all(
                      width: 1.0, color: Color(0xFF03A688).withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Não, os grupos prioritários e a ordem em que eles serão vacinados foram definidos pelo Ministério da Saúde, e pela Secretaria do Estado de Saúde de Minas Gerais, por meio da Deliberação CIB-SUS/MG 3314, de 29 de janeiro de 2021.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[100],
                    ),
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
            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
            alignment: Alignment(0.0, 0.0),
            decoration: BoxDecoration(
              color: baseColor,
              border: Border.all(width: 1.0, color: baseColor),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(children: [
              Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.contact_support,
                  color: Color(0xFF03A688),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "QUAL O GRUPO PRIORITÁRIO EM QUE ESTAMOS HOJE NO MUNICÍPIO?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFF03A688).withOpacity(0.3),
                  border: Border.all(
                      width: 1.0, color: Color(0xFF03A688).withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Grupo de comorbidades: Pessoas com Síndrome de Down (todos acima de 18 anos)\nRenal crônico: Que faz hemodiálise e diálise (todos acima de 18 anos)\nDemais Comorbidades: de 59 a 55 anos.\n(Grupo em anexo. Pessoas com deficiência cadastradas no BPC: de 59 a 55 anos.)",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[100],
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
                          color: Colors.grey[100],
                        ),
                      ),
                    ),
                  ],
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
            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
            alignment: Alignment(0.0, 0.0),
            decoration: BoxDecoration(
              color: baseColor,
              border: Border.all(width: 1.0, color: baseColor),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(children: [
              Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.contact_support,
                  color: Color(0xFF03A688),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "COMO POSSO REALIZAR O AGENDAMENTO PARA OS IDOSOS ACIMA DE 60 – 64?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFF03A688).withOpacity(0.3),
                  border: Border.all(
                      width: 1.0, color: Color(0xFF03A688).withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Caso algum idoso nesta faixa de idade ainda não tenha recebido a vacina, solicitamos que a família, ou amigos procurem o Posto de Saúde em que o idoso for registrado, ou o posto mais próximo, de acordo com seu bairro para saber quais os horários disponíveis e se a vacina será feita em domicílio, ou não.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[100],
                    ),
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
    Color baseColor = Color(
      0xFF252525,
    );

    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: ListView(
        children: [
          SizedBox(
            height: 130,
          ),
          Wrap(
            spacing: 100,
            children: [
              Container(
                margin: EdgeInsets.only(left: 130),
                child: Text(
                  "VACINÔMETRO",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF03A688),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 425),
                child: Text(
                  "DÚVIDAS FREQUENTES",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF03A688),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 70,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    // height: MediaQuery.of(context).size.width / 2,
                    margin: EdgeInsets.fromLTRB(120.0, 0.0, 0.0, 0.0),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: baseColor,
                      border: Border.all(width: 4.0, color: baseColor),
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
                    width: MediaQuery.of(context).size.width / 2.5,
                    margin: EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: baseColor,
                      border: Border.all(width: 1.0, color: baseColor),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(children: [
                      SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.contact_support,
                          color: Color(0xFF03A688),
                          size: 28,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "FOI O MUNICÍPIO QUEM DETERMINOU A ORDEM DOS GRUPOS A SEREM VACINADOS?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF03A688),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Align(
                        //alignment: Alignment.centerLeft,
                        child: Text(
                          "Não, os grupos prioritários e a ordem em que eles serão vacinados foram definidos pelo Ministério da Saúde, e pela Secretaria do Estado de Saúde de Minas Gerais, por meio da Deliberação CIB-SUS/MG 3314, de 29 de janeiro de 2021.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.contact_support,
                          color: Color(0xFF03A688),
                          size: 28,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "QUAL O GRUPO PRIORITÁRIO EM QUE ESTAMOS HOJE NO MUNICÍPIO?",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF03A688),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Grupo de comorbidades: Pessoas com Síndrome de Down (todos acima de 18 anos)\nRenal crônico: Que faz hemodiálise e diálise (todos acima de 18 anos)\nDemais Comorbidades: de 59 a 55 anos.\n(Grupo em anexo. Pessoas com deficiência cadastradas no BPC: de 59 a 55 anos.)",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        // alignment: Alignment.centerLeft,
                        child: Text(
                          "Nota: Gestantes e Puérperas suspensão a vacinação com a vacina do Laboratório Fio Cruz/ Astrazenica, de acordo com o ofício em anexo.O Município recebeu apenas o laboratório Fiocruz/Astrazenica, por esse motivo a suspensão da vacina para Gestantes e Puérperas.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.contact_support,
                          color: Color(0xFF03A688),
                          size: 28,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "COMO POSSO REALIZAR O AGENDAMENTO PARA OS IDOSOS ACIMA DE 60 - 64?",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF03A688),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Align(
                        //alignment: Alignment.centerLeft,
                        child: Text(
                          "Caso algum idoso nesta faixa de idade ainda não tenha recebido a vacina, solicitamos que a família, ou amigos procurem o Posto de Saúde em que o idoso for registrado, ou o posto mais próximo, de acordo com seu bairro para saber quais os horários disponíveis e se a vacina será feita em domicílio, ou não.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[100],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        "Dados fornecidos pela Secretaria de Saúde - Santa Rita do Sapucaí\nInformações (3471-5609 - 3471-2006)",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[100],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
