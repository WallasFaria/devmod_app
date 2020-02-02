import 'package:devmod_app/app/modules/events/events_controller.dart';
import 'package:devmod_app/app/modules/events/events_module.dart';
import 'package:devmod_app/app/shared/models/event_model.dart';
import 'package:devmod_app/app/shared/widgets/event_card/event_card_widget.dart';
import 'package:flutter/material.dart';

class TabFinishedEventsWidget extends StatelessWidget {
  final EventsController controller = EventsModule.to.bloc();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.finishedEvents,
      builder: (_, AsyncSnapshot<List<EventModel>> snapshot) {
        if (snapshot.hasError)
          return Center(child: Text('Error ao conectar o servidor'));

        if (!snapshot.hasData)
          return Center(child: CircularProgressIndicator());

        var events = snapshot.data;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: ListView.builder(
            itemCount: events.length,
            itemBuilder: (_, index) => EventCardWidget(event: events[index]),
          ),
        );
      },
    );
  }
}
