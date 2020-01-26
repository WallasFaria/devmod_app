import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:devmod_app/app/modules/events/events_controller.dart';
import 'package:devmod_app/app/modules/events/events_module.dart';

void main() {
  initModule(EventsModule());

  EventsController events;

  setUp(() {
    events = EventsModule.to.get<EventsController>();
  });

  group('EventsController Test', () {
    test("First Test", () {
      expect(events, isInstanceOf<EventsController>());
    });

    test("Set Value", () {});
  });
}
