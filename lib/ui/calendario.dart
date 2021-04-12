import 'package:coronasrs/constants/styles.dart';
import 'package:flutter/material.dart';

class CalendarioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppScale _scale = AppScale(context);

    return Center(
      child: Container(
        child: Text(
          "Calendário de Vacinação",
          style: TextStyle(color: Colors.blue, fontSize: _scale.labelDim * 5),
        ),
      ),
    );
  }
}
