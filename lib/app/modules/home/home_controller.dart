import 'package:devmod_app/app/shared/models/event_model.dart';
import 'package:devmod_app/app/shared/repositories/event_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final EventRepository eventRepository;

  _HomeControllerBase(this.eventRepository) {
    nextEvent = eventRepository.fetchNextEvent();
    lastEvent = eventRepository.fetchLastEvent();
  }

  Future<EventModel> nextEvent;
  Future<EventModel> lastEvent;
}
