import 'package:date_format/date_format.dart';

void main() {
  DateTime dateTime = DateTime.now();

  print(formatDate(dateTime, [yyyy, '/', mm, '/', dd])); // 2022/06/01
  print(formatDate(dateTime, [HH, ':', nn, ':', ss])); // 13:39:52
  print(formatDate(dateTime, [HH, ':', nn, ':', ss, '.',  SSS])); // 13:41:39.831
  print(formatDate(dateTime, [HH, ':', nn, ':', ss, z])); // timezone 13:40:35+0800
  print(formatDate(dateTime, [yyyy, '/', mm, '/', dd, ' ', HH, ':', nn, ':', ss])); // 2022/06/01 13:40:13
  print(dayInYear(dateTime));
}