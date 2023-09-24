import 'package:shared_preferences/shared_preferences.dart';

class LocalPrefs {
  static final _instance = LocalPrefs._();
  SharedPreferences? _preferences;

  LocalPrefs._();
  factory LocalPrefs() {
    return _instance;
  }

  init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  bool getLocalPrefBool({required String key}) {
    return _preferences?.getBool(key) ?? false;
  }

  void setLocalPrefBool({required String key, required bool value}) {
    _preferences?.setBool(key, value);
  }

  double? getCurrentLocation() {
    return _preferences?.getDouble('latitude');
  }

  void setCurrentLocation(
      {required double latitude, required double longitude}) {
    _preferences?.setDouble('latitude', latitude);
    _preferences?.setDouble('longitude', longitude);
  }

  removeValue(String key) async {
    return _preferences?.remove(key);
  }

  removeAll() async {
    return _preferences?.clear();
  }
}


//  add main file
//  void main() async {
//  WidgetsFlutterBinding.ensureInitialized();
// await LocalPrefs().init();
// }