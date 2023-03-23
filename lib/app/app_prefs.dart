import 'package:shared_preferences/shared_preferences.dart';

import '../presentation/resources/languages_manager.dart';

const String PREFS_KEY_LANG = "PREFS_KEY_LANG";

class AppPreference {
  final SharedPreferences _preferences;

  AppPreference(this._preferences);

  Future<String?> getAppLanguage() async {
    String? language = _preferences.getString(PREFS_KEY_LANG);
    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      // return default lang
      LanguageType.ENGLISH.getValue();
    }
  }
}
