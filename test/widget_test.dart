import 'package:flutter_test/flutter_test.dart';

import 'package:ai_chat/main.dart';

void main() {
  testWidgets('App loads smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const AnlAIApp());

    expect(find.text('AnlAI'), findsOneWidget);
    expect(find.text('Merhaba! 👋'), findsOneWidget);
  });
}
