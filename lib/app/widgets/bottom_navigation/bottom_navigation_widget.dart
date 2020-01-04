import 'package:devmod_app/app/modules/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'bottom_navigation_controller.dart';

class BottomNavigationWidget extends StatelessWidget {
  static var controller = BottomNavigationController();

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Center(child: Text('Index 1: Business', style: optionStyle)),
    Center(child: Text('Index 2: School', style: optionStyle)),
    Center(child: Text('Index 3: School', style: optionStyle)),
  ];

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Scaffold(
        body: _widgetOptions.elementAt(controller.selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Padding(
                padding: EdgeInsets.only(top: 6.0),
                child: Text('Home'),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.event_note),
              title: Padding(
                padding: EdgeInsets.only(top: 6.0),
                child: Text('Eventos'),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Padding(
                padding: EdgeInsets.only(top: 6.0),
                child: Text('Membros'),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Padding(
                padding: EdgeInsets.only(top: 6.0),
                child: Text('DevMode'),
              ),
            ),
          ],
          currentIndex: controller.selectedIndex,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 10.0,
          unselectedFontSize: 10.0,
          unselectedItemColor: Colors.grey[700],
          selectedItemColor: Colors.amber[800],
          unselectedIconTheme: IconThemeData(color: Colors.grey[700]),
          onTap: controller.onItemTapped,
        ),
      ),
    );
  }
}
