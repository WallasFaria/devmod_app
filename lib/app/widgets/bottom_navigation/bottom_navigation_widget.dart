import 'package:devmod_app/app/app_controller.dart';
import 'package:devmod_app/app/app_module.dart';
import 'package:devmod_app/app/modules/about/about_page.dart';
import 'package:devmod_app/app/modules/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'bottom_navigation_controller.dart';

class BottomNavigationWidget extends StatelessWidget {
  static var controller = AppModule.to.bloc<BottomNavigationController>();
  final appController = AppModule.to.bloc<AppController>();

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Center(child: Text('Index 1: Business', style: optionStyle)),
    Center(child: Text('Index 2: School', style: optionStyle)),
    AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return Observer(
      builder: (contaxt) {
        SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle(
            statusBarColor: Theme.of(context).scaffoldBackgroundColor,
            statusBarBrightness:
                appController.themeIsLight ? Brightness.dark : Brightness.light,
            statusBarIconBrightness:
                appController.themeIsLight ? Brightness.dark : Brightness.light,
            systemNavigationBarColor: Theme.of(context).scaffoldBackgroundColor,
            systemNavigationBarIconBrightness:
                appController.themeIsLight ? Brightness.dark : Brightness.light,
          ),
        );

        return Scaffold(
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
                icon: Icon(Icons.people),
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
            unselectedItemColor: Theme.of(context).textTheme.caption.color,
            selectedItemColor: Theme.of(context).primaryColor,
            backgroundColor: Theme.of(context).bottomAppBarColor,
            unselectedIconTheme:
                IconThemeData(color: Theme.of(context).textTheme.caption.color),
            onTap: controller.onItemTapped,
          ),
        );
      },
    );
  }
}
