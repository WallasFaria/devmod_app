import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void changeStatusBarColor(
    {bool darkLabel, statusBarColor: Colors.transparent}) {
  if (darkLabel) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: statusBarColor));
  } else {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: statusBarColor));
  }
}
