import 'package:flutter/material.dart';

class FaleConoscoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width > size.height ? size.height : size.width;

    if (width < 590) {
      return contactScreenPhone(context);
    } else if (width > 700) {
      return contactScreenDesktop(context);
    } else {
      return contactScreenDesktop(context);
    }
  }

  Scaffold contactScreenPhone(BuildContext context) {
    Color baseColor = Color(0xFFF2F2F2);
    var appBar = AppBar();

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
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  Scaffold contactScreenDesktop(BuildContext context) {
    Color baseColor = Color(0xFFF2F2F2);
    var appBar = AppBar();

    return Scaffold(
      body: ListView(
        children: [
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
          FractionallySizedBox(
            widthFactor: 0.8,
            child: TextField(
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
            widthFactor: 0.2,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlue[900],
              ),
              child: Text('Enviar'),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
