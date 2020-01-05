// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppBase, Store {
  Computed<bool> _$themeIsDarkComputed;

  @override
  bool get themeIsDark =>
      (_$themeIsDarkComputed ??= Computed<bool>(() => super.themeIsDark)).value;
  Computed<bool> _$themeIsLightComputed;

  @override
  bool get themeIsLight =>
      (_$themeIsLightComputed ??= Computed<bool>(() => super.themeIsLight))
          .value;
  Computed<String> _$themeModeStringComputed;

  @override
  String get themeModeString => (_$themeModeStringComputed ??=
          Computed<String>(() => super.themeModeString))
      .value;

  final _$themeModeAtom = Atom(name: '_AppBase.themeMode');

  @override
  ThemeMode get themeMode {
    _$themeModeAtom.context.enforceReadPolicy(_$themeModeAtom);
    _$themeModeAtom.reportObserved();
    return super.themeMode;
  }

  @override
  set themeMode(ThemeMode value) {
    _$themeModeAtom.context.conditionallyRunInAction(() {
      super.themeMode = value;
      _$themeModeAtom.reportChanged();
    }, _$themeModeAtom, name: '${_$themeModeAtom.name}_set');
  }

  final _$_AppBaseActionController = ActionController(name: '_AppBase');

  @override
  void setThemeMode(ThemeMode mode) {
    final _$actionInfo = _$_AppBaseActionController.startAction();
    try {
      return super.setThemeMode(mode);
    } finally {
      _$_AppBaseActionController.endAction(_$actionInfo);
    }
  }
}
