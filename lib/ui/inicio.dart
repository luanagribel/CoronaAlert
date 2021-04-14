import 'package:coronasrs/constants/styles.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppScale _scale = AppScale(context);

    return Column(
      children:[
        Container(
            child: Image(
              image: AssetImage("./assets/banner.png"),
              fit: BoxFit.cover,
            ), 
          ),
      ],
    );
  }
}
