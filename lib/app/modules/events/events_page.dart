import 'package:devmod_app/app/app_controller.dart';
import 'package:devmod_app/app/app_module.dart';
import 'package:flutter/material.dart';

import 'widgets/tab_finished_events_widget.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 1,
          brightness: AppModule.to.bloc<AppController>().themeIsLight
              ? Brightness.light
              : Brightness.dark,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(
                labelColor: Theme.of(context).primaryColor,
                unselectedLabelColor: Theme.of(context).textTheme.title.color,
                indicatorColor: Theme.of(context).primaryColor,
                tabs: [
                  Tab(text: 'Próximos'),
                  Tab(text: 'Histórico'),
                ],
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Próximos')),
            TabFinishedEventsWidget(),
          ],
        ),
      ),
    );
  }
}
