import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mereceite/Perfil.dart';

void main() {
  testWidgets('pesquisa receitas e rejeita consulta vazia', (
    WidgetTester tester,
  ) async {
    tester.view.physicalSize = const Size(1080, 1920);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(const MaterialApp(home: Perfil()));

    final campo = find.byType(TextField);
    final botao = find.text('Pesquisar');

    await tester.tap(botao);
    await tester.pump();
    expect(
      find.text('Digite o nome de uma receita para iniciar a pesquisa.'),
      findsOneWidget,
    );
    expect(find.byKey(const Key('resultado-pesquisa')), findsNothing);

    await tester.enterText(campo, '  Lasanha caseira  ');
    await tester.tap(botao);
    await tester.pump();
    expect(
      find.text('Pesquisa realizada para: Lasanha caseira'),
      findsOneWidget,
    );

    await tester.enterText(campo, '  ');
    await tester.tap(botao);
    await tester.pump();
    expect(
      find.text('Digite o nome de uma receita para iniciar a pesquisa.'),
      findsOneWidget,
    );
    expect(find.byKey(const Key('resultado-pesquisa')), findsNothing);

    await tester.enterText(campo, 'Bolo de chocolate');
    await tester.tap(botao);
    await tester.pump();
    expect(
      find.text('Pesquisa realizada para: Bolo de chocolate'),
      findsOneWidget,
    );
  });
}
