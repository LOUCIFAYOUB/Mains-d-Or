import 'package:flutter_test/flutter_test.dart';
import 'package:main_dor/main.dart';

void main() {
  testWidgets('Main d\'Or displays the welcome screen', (tester) async {
    await tester.pumpWidget(const MainDorApp());

    expect(find.text("Main d'Or"), findsOneWidget);
    expect(find.text('Supabase initialized!'), findsOneWidget);
  });
}