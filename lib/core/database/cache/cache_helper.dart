import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  SharedPreferences? _preferences;
  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<void> saveData({required String key, required dynamic value}) async {
    if (value is String) {
      await _preferences!.setString(key, value);
    } else if (value is bool) {
      await _preferences!.setBool(key, value);
    } else if (value is int) {
      await _preferences!.setInt(key, value);
    } else if (value is double) {
      await _preferences!.setDouble(key, value);
    } else if (value is List<String>) {
      await _preferences!.setStringList(key, value);
    }
  }

  dynamic getData({required String key}) {
    return _preferences!.get(key);
  }
}
