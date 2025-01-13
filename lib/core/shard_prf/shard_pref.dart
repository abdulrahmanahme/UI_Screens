import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShardPrefHelper {
  ShardPrefHelper._();
  static final ShardPrefHelper _shardPrefHelper = ShardPrefHelper._();
  factory ShardPrefHelper() {
    return _shardPrefHelper;
  }

  final Future<SharedPreferences> _preferences =
      SharedPreferences.getInstance();

  void setValue(String key, dynamic value) async {
    final SharedPreferences prefs = await _preferences;
    switch (value.runtimeType) {
      case bool:
        await prefs.setBool(key, value);
        break;
      case String:
        await prefs.setString(key, value);
        break;
      case double:
        await prefs.setDouble(key, value);
        break;
      case int:
        await prefs.setInt(key, value);
        break;
      default:
        throw ArgumentError('Unsupported value type: ${value.runtimeType}');
    }
  }

  /// Gets an String value from SharedPreferences with given [key].
  Future<String?> getString(String key) async {
    final SharedPreferences sharedPreferences = await _preferences;
    return sharedPreferences.getString(key) ?? '';
  }
}
