import 'package:flutter/material.dart';
import 'package:devmod_app/app/app_module.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

void main() {
  Intl.defaultLocale = 'pt_BR';
  initializeDateFormatting('pt_BR', null);

  return runApp(AppModule());
}
