import 'package:devmod_app/app/app_controller.dart';
import 'package:devmod_app/app/app_module.dart';
import 'package:devmod_app/app/widgets/event_card/event_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

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
              floating: true,
              brightness: appController.themeIsLight
                  ? Brightness.light
                  : Brightness.dark,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              title: Text(
                '_DEV.Mode',
                style:
                    TextStyle(color: Theme.of(context).textTheme.title.color),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/logo.png', width: 160),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(12)),
                  Center(
                    child: Text(
                      'Tecnologia e pessoas conectadas',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Center(
                    child: Text(
                      'Próximos Eventos',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  EventCardWidget(),
                  EventCardWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
