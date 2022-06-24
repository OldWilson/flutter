import 'package:flustars/flustars.dart';

void main(){
  // test_spUtil();

  String dateTime = DateUtil.getNowDateStr();
  print('$dateTime');
}

// void test_spUtil() async {
//   await SpUtil.getInstance();
//
//   SpUtil.remove("username");
//   String? username = SpUtil.getString("username", defValue: "test");
//   print("username1: $username");
//
//   SpUtil.putString("username", "test002");
//   username = SpUtil.getString("username");
//   print("username2: $username");
//
// }

// class DataFormats {
//
// }

void test_dateUtil() {
  String dateTime = DateUtil.getNowDateStr();
  print('$dateTime');
}