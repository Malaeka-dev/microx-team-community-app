import 'package:flutter_test/flutter_test.dart';
import 'package:microx_app/main.dart';
import 'package:microx_app/screens/team_screen.dart';

void main() {
  testWidgets('App opens the Team screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MicroXApp());

    expect(find.byType(TeamScreen), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}