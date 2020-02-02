import 'package:intl/intl.dart';

class Format {
  static final currencyFormat = new NumberFormat.currency(symbol: 'R\$');
  static final dateFormat = new DateFormat('dd/MM/yyyy');
  static final dateTimeFormat = new DateFormat();

  static String currency(double value) => currencyFormat.format(value);
  static String date(DateTime value) => dateFormat.format(value);
  static String dateTime(DateTime value) => dateTimeFormat.format(value);
  static String month(DateTime value) => DateFormat().add_MMM().format(value);
  static String time(DateTime value) => DateFormat().add_Hm().format(value);
}
