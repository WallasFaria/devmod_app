import 'package:devmod_app/app/app_controller.dart';
import 'package:devmod_app/app/app_module.dart';
import 'package:devmod_app/app/shared/models/event_model.dart';
import 'package:devmod_app/app/shared/widgets/event_card/event_card_widget.dart';
import 'package:devmod_app/app/shared/widgets/member_card/member_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'home_controller.dart';
import 'home_module.dart';
import 'widgets/section_title_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var appController = AppModule.to.bloc<AppController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              centerTitle: true,
              floating: false,
              pinned: true,
              elevation: 1.0,
              brightness: appController.themeIsLight
                  ? Brightness.light
                  : Brightness.dark,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              expandedHeight: 80,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  '_DEV.Mode',
                  style:
                      TextStyle(color: Theme.of(context).textTheme.title.color),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Image.asset(
                          'assets/logo_${appController.themeModeString}.png',
                          width: 150),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(15)),
                  Center(
                    child: Text(
                      'Tecnologia e pessoas conectadas',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                    ),
                  ),
                  SectionTitle(title: 'Próximo Evento'),
                  FutureBuilder(
                    future: HomeModule.to.bloc<HomeController>().nextEvent,
                    builder: (_, AsyncSnapshot<EventModel> snapshot) {
                      if (!snapshot.hasData)
                        return Center(child: CircularProgressIndicator());
                      return EventCardWidget(event: snapshot.data);
                    },
                  ),
                  SectionTitle(title: 'Membros recém chegados'),
                  MemberCardWidget(),
                  MemberCardWidget(),
                  Padding(padding: EdgeInsets.all(15)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
