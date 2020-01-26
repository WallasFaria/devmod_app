import 'package:devmod_app/app/modules/events/events_controller.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:devmod_app/app/modules/events/events_page.dart';

class EventsModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => EventsController()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => EventsPage();

  static Inject get to => Inject<EventsModule>.of();
}
