import 'package:flutter_test/flutter_test.dart';
import 'package:yassawi/main.dart';

void main() {
  testWidgets('University Life app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const UniversityLifeApp());

    // Verify that splash screen is shown
    expect(find.text('University Life'), findsOneWidget);
  });
}
