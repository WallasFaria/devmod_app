import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:devmod_app/app/shared/models/event_model.dart';
import 'package:dio/dio.dart';

class EventRepository extends Disposable {
  Dio client;

  EventRepository(this.client);

  Future<List<EventModel>> fetchFinishedEvents() async {
    final response =
        await client.get('http://www.mocky.io/v2/5e36b0333200009921ae3cc1');
    return List<EventModel>.from(
        response.data.map((event) => EventModel.fromJson(event)));
  }

  Future<List<EventModel>> fetchNextEvents() async {
    final response =
        await client.get('http://www.mocky.io/v2/5e36b203320000fd07ae3cc5');
    return List<EventModel>.from(
        response.data.map((event) => EventModel.fromJson(event)));
  }

  Future<EventModel> fetchLastEvent() async {
    final events = await fetchFinishedEvents();
    return events.first;
  }

  Future<EventModel> fetchNextEvent() async {
    final events = await fetchNextEvents();
    return events.first;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
