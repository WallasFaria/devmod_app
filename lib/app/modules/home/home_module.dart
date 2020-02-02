import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:devmod_app/app/shared/repositories/event_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:devmod_app/app/modules/home/home_page.dart';

import 'home_controller.dart';

class HomeModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => HomeController(i.getDependency<EventRepository>())),
      ];

  @override
  List<Dependency> get dependencies => [
        Dependency((i) => EventRepository(Dio())),
      ];

  @override
  Widget get view => HomePage();

  static Inject get to => Inject<HomeModule>.of();
}
