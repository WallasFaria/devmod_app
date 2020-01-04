import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:devmod_app/app/app_controller.dart';
import 'package:devmod_app/app/app_module.dart';

void main() {
  initModule(AppModule());
  AppController controller;

  setUp(() {
    controller = AppModule.to.bloc<AppController>();
  });

  group('AppBloc Test', () {
    test("First Test", () {
      expect(controller, isInstanceOf<AppController>());
    });
  });
}
