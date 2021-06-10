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
    return Scaffold(
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
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.chat_outlined,
                color: Color(0xFF03A688),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'FALE CONOSCO',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF03A688),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'PREENCHA OS CAMPOS ABAIXO EM CASO DE DÚVIDAS OU SUGESTÕES:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        FractionallySizedBox(
          widthFactor: 0.8,
          child: TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Campo obrigatorio';
              }
              if (value.length < 3) {
                return 'Nome deve conter mais de 3 caracteres';
              }
              return null;
            },
            key: Key('nameTextField'),
            controller: nameController,
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nome Completo',
              labelStyle: TextStyle(color: Colors.grey[100]),
              fillColor: Color(
                0xFF252525,
              ),
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
            key: Key('emailTextField'),
            controller: mailController,
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
              labelStyle: TextStyle(color: Colors.grey[100]),
              fillColor: Color(
                0xFF252525,
              ),
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
            key: Key('msgTextField'),
            controller: msgController,
            obscureText: false,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(top: 40.0, bottom: 40.0, left: 10),
              border: OutlineInputBorder(),
              labelText: 'Mensagem',
              labelStyle: TextStyle(color: Colors.grey[100]),
              fillColor: Color(
                0xFF252525,
              ),
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
              primary: Color(0xFF03A688),
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
    Color baseColor = Color(0xFF252525);

    return Scaffold(
        body: ListView(children: [
      SizedBox(
        height: 200,
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.chat_outlined,
              color: Color(0xFF03A688),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'FALE CONOSCO',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF03A688),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'PREENCHA OS CAMPOS ABAIXO EM CASO DE DÚVIDAS OU SUGESTÕES:',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
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
                    labelStyle:
                        TextStyle(color: Colors.grey[100], fontSize: 12),
                    fillColor: baseColor,
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
                    labelStyle:
                        TextStyle(color: Colors.grey[100], fontSize: 12),
                    fillColor: baseColor,
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
                      contentPadding: const EdgeInsets.only(
                          top: 50.0, bottom: 50.0, left: 10),
                      border: OutlineInputBorder(),
                      labelText: 'Mensagem',
                      labelStyle:
                          TextStyle(color: Colors.grey[100], fontSize: 12),
                      fillColor: baseColor,
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
            primary: Color(0xFF03A688),
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
