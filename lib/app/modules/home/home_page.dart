import 'package:devmod_app/app/widgets/event_card/event_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
            floating: true,
            title: Text('_DEV.Mode'),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/logo.jpg', width: 160),
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
    );
  }
}
