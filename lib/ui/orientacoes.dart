import 'package:coronasrs/constants/styles.dart';
import 'package:flutter/material.dart';

class OrientacoesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppScale _scale = AppScale(context);

    return Center(
      child: Container(
        child: Text(
          "Orientações COVID-19",
          style: TextStyle(color: Colors.blue, fontSize: _scale.labelDim * 5),
        ),
      ),
    );
  }
}