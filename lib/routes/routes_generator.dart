import 'package:coronasrs/routes/routes.dart';
import 'package:coronasrs/ui/inicio.dart';
import 'package:coronasrs/ui/boletim.dart';
import 'package:coronasrs/ui/calendario.dart';
import 'package:coronasrs/ui/faleconosco.dart';
import 'package:coronasrs/ui/graficos.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeInicio:
        return MaterialPageRoute(builder: (_) => InicioPage());
        break;
      case routeBoletim:
        return MaterialPageRoute(builder: (_) => BoletimPage());
        break;
      case routeCalendario:
        return MaterialPageRoute(builder: (_) => CalendarioPage());
        break;
      case routeFaleConosco:
        return MaterialPageRoute(builder: (_) => FaleConoscoPage());
        break;
      case routeGraficos:
        return MaterialPageRoute(builder: (_) => GraficosPage());
        break;

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
