import 'package:devmod_app/app/widgets/bottom_navigation/bottom_navigation_widget.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          appBarTheme:
              AppBarTheme(brightness: Brightness.light, color: Colors.white)),
      home: BottomNavigationWidget(),
    );
  }
}
