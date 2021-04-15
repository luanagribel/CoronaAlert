import 'package:coronasrs/app_view.dart';
import 'package:coronasrs/routes/routes.dart';
import 'package:coronasrs/routes/routes_generator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CoronaAlert SRS',
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: (_, child) => AppView(child: child),
      initialRoute: routeInicio,
      navigatorKey: navKey,
      onGenerateRoute: RouteGenerator.generatorRoute,
    );
  }
}
