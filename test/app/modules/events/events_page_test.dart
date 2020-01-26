import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:devmod_app/app/modules/events/events_page.dart';

main() {
  testWidgets('EventsPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(EventsPage()));
    final titleFinder = find.text('Events');
    expect(titleFinder, findsOneWidget);
  });
}
