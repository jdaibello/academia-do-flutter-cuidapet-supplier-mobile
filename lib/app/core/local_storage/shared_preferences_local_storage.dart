import 'package:cuidapet_supplier_mobile/app/core/local_storage/i_local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesLocalStorage implements ILocalStorage {
  Future<SharedPreferences> get _instance => SharedPreferences.getInstance();

  @override
  Future<void> clear() async {
    final sp = await _instance;
    await sp.clear();
  }

  @override
  Future<bool> contains(String key) async {
    final sp = await _instance;
    return sp.containsKey(key);
  }

  @override
  Future<P?> read<P>(String key) async {
    final sp = await _instance;

    if (P is String) {
      return sp.getString(key) as P?;
    } else if (P is int) {
      return sp.getInt(key) as P?;
    } else if (P is bool) {
      return sp.getBool(key) as P?;
    } else if (P is double) {
      return sp.getDouble(key) as P?;
    } else if (P is List) {
      return sp.getStringList(key) as P?;
    } else {
      throw Exception('Type not supported');
    }
  }

  @override
  Future<void> remove(String key) async {
    final sp = await _instance;
    sp.remove(key);
  }

  @override
  Future<void> write<P>(String key, P value) async {
    final sp = await _instance;

    if (P is String) {
      sp.setString(key, value as String);
    } else if (P is int) {
      sp.setInt(key, value as int);
    } else if (P is bool) {
      sp.setBool(key, value as bool);
    } else if (P is double) {
      sp.setDouble(key, value as double);
    } else if (P is List) {
      sp.setStringList(key, value as List<String>);
    } else {
      throw Exception('Type not supported');
    }
  }
}
