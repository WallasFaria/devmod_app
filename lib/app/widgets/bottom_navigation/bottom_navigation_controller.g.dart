// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_navigation_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BottomNavigationController on _BottomNavigationBase, Store {
  final _$selectedIndexAtom = Atom(name: '_BottomNavigationBase.selectedIndex');

  @override
  int get selectedIndex {
    _$selectedIndexAtom.context.enforceReadPolicy(_$selectedIndexAtom);
    _$selectedIndexAtom.reportObserved();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.context.conditionallyRunInAction(() {
      super.selectedIndex = value;
      _$selectedIndexAtom.reportChanged();
    }, _$selectedIndexAtom, name: '${_$selectedIndexAtom.name}_set');
  }

  final _$_BottomNavigationBaseActionController =
      ActionController(name: '_BottomNavigationBase');

  @override
  void onItemTapped(int index) {
    final _$actionInfo = _$_BottomNavigationBaseActionController.startAction();
    try {
      return super.onItemTapped(index);
    } finally {
      _$_BottomNavigationBaseActionController.endAction(_$actionInfo);
    }
  }
}
