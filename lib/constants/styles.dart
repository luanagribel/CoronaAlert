import 'package:flutter/material.dart';

final TextStyle kPageTitleStyle = TextStyle(fontSize: 10.0);

class AppScale {
  BuildContext _ctxt;

  AppScale(this._ctxt);

  double get labelDim => scaleWidth(.02);
  double get popupMenuButton => scaleHeight(.095);

  double scaleWidth(double widthScale) {
    return MediaQuery.of(_ctxt).size.width * widthScale;
  }

  double scaleHeight(double heightScale) {
    return MediaQuery.of(_ctxt).size.height * heightScale;
  }
}
