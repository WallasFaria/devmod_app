import 'package:devmod_app/app/app_module.dart';
import 'package:devmod_app/app/shared/widgets/bottom_navigation/bottom_navigation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'app_controller.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        title: 'DevMode',
        debugShowCheckedModeBanner: false,
        theme: AppModule.to.bloc<AppController>().themeIsLight
            ? ThemeData.light().copyWith(primaryColor: Color(0xFF00ADEF))
            : ThemeData.dark().copyWith(primaryColor: Color(0xFFF5B53D)),
        home: BottomNavigationWidget(),
      ),
    );
  }
}
