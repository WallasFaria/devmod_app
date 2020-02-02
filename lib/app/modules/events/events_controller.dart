import 'package:devmod_app/app/shared/models/event_model.dart';
import 'package:devmod_app/app/shared/repositories/event_repository.dart';
import 'package:mobx/mobx.dart';

part 'events_controller.g.dart';

class EventsController = _EventsBase with _$EventsController;

abstract class _EventsBase with Store {
  EventRepository repository;

  _EventsBase(this.repository);

  Future<List<EventModel>> _finishedEvents;

  Future<List<EventModel>> get finishedEvents {
    if (_finishedEvents != null) return _finishedEvents;
    return _finishedEvents = repository.fetchFinishedEvents();
  }
}
