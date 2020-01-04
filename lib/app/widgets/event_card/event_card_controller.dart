import 'package:mobx/mobx.dart';

part 'event_card_controller.g.dart';

class EventCardController = _EventCardBase with _$EventCardController;

abstract class _EventCardBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
