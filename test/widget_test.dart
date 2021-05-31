import 'package:coronasrs/app_view.dart';
import 'package:coronasrs/ui/calendario.dart';
import 'package:coronasrs/ui/inicio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../lib/ui/faleconosco.dart';
import 'package:mockito/mockito.dart';
import '../lib/ui/boletim.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  group('Teste de Widget', () {
    testWidgets(
      'Teste Key CalendarioPage',
      (WidgetTester tester) async {
        await tester.pumpWidget(MaterialApp(home: CalendarioPage()));

        expect(find.byKey(Key('Key')), findsOneWidget);
      },
    );

    testWidgets('Teste titulo', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
          home: AppView(
        child: Container(),
      )));

      expect(find.text('CoronaAlert'), findsOneWidget);
    });

    testWidgets('Verifica os elementos da página "Fale Conosco"',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: FaleConoscoPage(),
        ),
      );

      expect(find.byKey(Key('nameTextField')), findsOneWidget);
      expect(find.byKey(Key('emailTextField')), findsOneWidget);
      expect(find.byKey(Key('msgTextField')), findsOneWidget);
    });

    testWidgets('Teste botao redirecionamento site prefeitura',
        (WidgetTester tester) async {
      final mockObserver = MockNavigatorObserver();
      await tester.pumpWidget(
        MaterialApp(
          navigatorObservers: [mockObserver],
          home: InicioPage(),
        ),
      );
      await tester.tap(find.byKey(Key('onTap')));
      await tester.pumpAndSettle();
      verify(mockObserver.didPush(any, any));
      expect(find.byKey(Key('onTap')), findsOneWidget);
    });

    testWidgets(
      'Teste Campos',
      (WidgetTester tester) async {
        await tester.pumpWidget(MaterialApp(home: BoletimPage()));

        expect(find.text('193'), findsOneWidget);
        expect(find.text('2%'), findsOneWidget);
        expect(find.text('34'), findsOneWidget);
      },
    );

    testWidgets(
      'Teste Page Inicio',
      (WidgetTester tester) async {
        await tester.pumpWidget(MaterialApp(home: InicioPage()));

        expect(find.textContaining('Santa Rita'), findsWidgets);
      },
    );
  });
}
