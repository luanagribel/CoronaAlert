import 'package:coronasrs/app_view.dart';
import 'package:coronasrs/ui/calendario.dart';
import 'package:coronasrs/ui/inicio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('finds a Key widget', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: CalendarioPage()));

    // Find a widget that displays the letter 'H'.
    expect(find.byKey(Key('AgoraVai')), findsOneWidget);
  });

  testWidgets('Fale Conosco', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
        home: AppView(
      child: Container(),
    )));
    await tester.tap(find.byKey(Key('FaleConoscoButton')));
    await tester.pumpAndSettle();
    // Find a widget that displays the letter 'H'.
    expect(find.byKey(Key('nameTextField')), findsOneWidget);
  });
}
