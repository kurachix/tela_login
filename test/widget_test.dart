import 'package:flutter_test/flutter_test.dart';

import 'package:tela_login/main.dart';

void main() {
  testWidgets('renders the login screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(Image), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Faça Login para Acessar o Sistema!'), findsOneWidget);
  });
}
