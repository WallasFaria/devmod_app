import 'package:devmod_app/app/app_module.dart';
import 'package:devmod_app/app/widgets/bottom_navigation/bottom_navigation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'app_controller.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        title: 'Flutter Slidy',
        debugShowCheckedModeBanner: false,
        theme: AppModule.to.bloc<AppController>().themeIsLight
            ? ThemeData.light().copyWith(primaryColor: Color(0xFF00ADEF))
            : ThemeData.dark().copyWith(primaryColor: Color(0xFF00ADEF)),
        home: BottomNavigationWidget(),
      ),
    );
  }
}
