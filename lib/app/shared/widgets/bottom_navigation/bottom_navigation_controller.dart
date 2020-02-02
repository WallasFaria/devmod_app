import 'package:mobx/mobx.dart';

part 'bottom_navigation_controller.g.dart';

class BottomNavigationController = _BottomNavigationBase
    with _$BottomNavigationController;

abstract class _BottomNavigationBase with Store {
  @observable
  int selectedIndex = 0;

  @action
  void onItemTapped(int index) {
    selectedIndex = index;
  }
}
