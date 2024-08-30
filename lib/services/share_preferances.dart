import 'package:shared_preferences/shared_preferences.dart';

sharedPrefWrite(key, velue) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(key, velue);
}

sharedPrefRead(key) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(key);
}

sharedPrefClear() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.clear();
}
