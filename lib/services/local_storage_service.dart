import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static final LocalStorageService _instance = LocalStorageService._internal();
  factory LocalStorageService() => _instance;
  LocalStorageService._internal();

  // Store user authentication status
  Future<void> setUserAuthenticated(bool isAuthenticated) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isAuthenticated', isAuthenticated);
  }

  Future<bool> isUserAuthenticated() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isAuthenticated') ?? false;
  }

  // Store user data
  Future<void> setUserData(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  Future<String?> getUserData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  // Store language preference
  Future<void> setLanguage(String languageCode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('languageCode', languageCode);
  }

  Future<String?> getLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('languageCode');
  }

  // Store character preferences
  Future<void> setCharacterPreference(String character) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('characterPreference', character);
  }

  Future<String?> getCharacterPreference() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('characterPreference');
  }
}