import 'package:coronasrs/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:clay_containers/clay_containers.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color baseColor = Color(0xFFF2F2F2);
    AppScale _scale = AppScale(context);

    return Expanded(
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
            color: baseColor,
            child: Image(
              image: AssetImage("./assets/banner.png"),
              fit: BoxFit.cover,
            ),
          ),
          ClayContainer(
            color: baseColor,
            //borderRadius: 50,
            child: Padding(
              padding: EdgeInsets.all(72),
              child: ClayText(
                "NOTICIA 1!",
                size: 20,
              ),
            ),
          ),
          ClayContainer(
            color: baseColor,
            //borderRadius: 50,
            child: Padding(
              padding: EdgeInsets.all(72),
              child: ClayText(
                "NOTICIA 2!",
                size: 20,
              ),
            ),
          ),
          ClayContainer(
            color: baseColor,
            //borderRadius: 50,
            child: Padding(
              padding: EdgeInsets.all(72),
              child: ClayText(
                "ORIENTACOES!",
                size: 20,
              ),
            ),
          ),
          ClayContainer(
            color: baseColor,
            //borderRadius: 50,
            child: Padding(
              padding: EdgeInsets.all(72),
              child: ClayText(
                "ORIENTACOES!",
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
