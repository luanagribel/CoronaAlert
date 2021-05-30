import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FaleConoscoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FaleConoscoPageState();
  }
}

class FaleConoscoPageState extends State<FaleConoscoPage> {
  final nameController = TextEditingController();
  final mailController = TextEditingController();
  final msgController = TextEditingController();

  void _createContato() async {
    String nome = nameController.text;
    String email = mailController.text;
    String mensagem = msgController.text;

    var url = Uri.parse('http://localhost:3000/contatos/');
    var response = await http
        .post(url, body: {'nome': nome, 'email': email, 'mensagem': mensagem});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    nameController.clear();
    mailController.clear();
    msgController.clear();
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width > size.height ? size.height : size.width;

    if (width < 722) {
      return FaleConoscoScreenPhone(context);
    } else if (width > 722) {
      return FaleConoscoScreenDesk(context);
    } else {
      return FaleConoscoScreenDesk(context);
    }
  }

  Scaffold FaleConoscoScreenPhone(BuildContext context) {
    Color baseColor = Color(0xFFF2F2F2);
    return Scaffold(
        body: ListView(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 50.0),
          color: baseColor,
          child: Image(
            image: AssetImage("./assets/FaleConoscoMobile.png"),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Preencha os campos abaixo para nos enviar dúvidas ou sugestões:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue[900],
                ),
              ),
            ],
          ),
        ),
        FractionallySizedBox(
          widthFactor: 0.8,
          child: TextField(
            key: Key('nameTextField'),
            controller: nameController,
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nome Completo',
              fillColor: Colors.grey[300],
              filled: true,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        FractionallySizedBox(
          widthFactor: 0.8,
          child: TextField(
            controller: mailController,
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
              fillColor: Colors.grey[300],
              filled: true,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        FractionallySizedBox(
          widthFactor: 0.8,
          child: TextField(
            controller: msgController,
            obscureText: false,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 40.0),
              border: OutlineInputBorder(),
              labelText: '  Mensagem',
              fillColor: Colors.grey[300],
              filled: true,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        FractionallySizedBox(
          widthFactor: 0.5,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.lightBlue[900],
            ),
            child: Text('Enviar'),
            onPressed: _createContato,
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    ));
  }

  Scaffold FaleConoscoScreenDesk(BuildContext context) {
    Color baseColor = Color(0xFFF2F2F2);

    return Scaffold(
        body: ListView(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 50.0),
        color: baseColor,
        child: Image(
          image: AssetImage("./assets/FaleConoscoDesk.png"),
          fit: BoxFit.cover,
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Preencha os campos abaixo para nos enviar dúvidas ou sugestões:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue[900],
              ),
            ),
          ],
        ),
      ),
      Wrap(
        alignment: WrapAlignment.center,
        spacing: 8.0,
        children: [
          Container(
            child: Column(children: [
              FractionallySizedBox(
                widthFactor: 0.2,
                child: TextField(
                  controller: nameController,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nome Completo',
                    fillColor: Colors.grey[300],
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FractionallySizedBox(
                widthFactor: 0.2,
                child: TextField(
                  controller: mailController,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    fillColor: Colors.grey[300],
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ]),
          ),
          Container(
            child: Column(
              children: [
                FractionallySizedBox(
                  widthFactor: 0.3,
                  child: TextField(
                    controller: msgController,
                    obscureText: false,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 50.0),
                      border: OutlineInputBorder(),
                      labelText: '  Mensagem',
                      fillColor: Colors.grey[300],
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
      FractionallySizedBox(
        widthFactor: 0.1,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.lightBlue[900],
          ),
          child: Text('Enviar'),
          onPressed: _createContato,
        ),
      ),
      SizedBox(
        height: 30,
      ),
    ]));
  }
}
