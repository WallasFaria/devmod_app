import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

class AppController = _AppBase with _$AppController;

abstract class _AppBase with Store {
  @observable
  ThemeMode themeMode = ThemeMode.dark;

  @computed
  bool get themeIsDark => themeMode == ThemeMode.dark;

  @computed
  bool get themeIsLight => themeMode == ThemeMode.light;

  @action
  void setThemeMode(ThemeMode mode) {
    themeMode = mode;
  }
}
