import 'package:devmod_app/app/widgets/bottom_navigation/bottom_navigation_controller.dart';
import 'package:devmod_app/app/widgets/event_card/event_card_controller.dart';
import 'package:devmod_app/app/app_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:devmod_app/app/app_widget.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => BottomNavigationController()),
        Bloc((i) => EventCardController()),
        Bloc((i) => AppBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
