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
      debugShowCheckedModeBanner: false,
      title: 'CoronaAlert',
      theme: ThemeData(
        primaryColor: Colors.green,
        scaffoldBackgroundColor: Color(0xFFF2F2F2),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: (_, child) => AppView(child: child),
      initialRoute: routeInicio,
      navigatorKey: navKey,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
