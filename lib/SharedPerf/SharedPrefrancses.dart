import 'package:shared_preferences/shared_preferences.dart';

enum Keys { Email, LogdIn }

class Controller_Sahred {
  late SharedPreferences _sharedPreferences;
  static final Controller_Sahred _instance = Controller_Sahred._();

  factory Controller_Sahred() {
    return _instance;
  }

  Controller_Sahred._();

  Future<void> SharedInstance() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> save({required String email}) async {
    await _sharedPreferences.setString(Keys.Email.toString(), email);
    await _sharedPreferences.setBool(Keys.LogdIn.toString(), true);
  }

  bool get resultSaved =>
      _sharedPreferences.getBool(Keys.LogdIn.toString()) ?? false;

  Future<bool> removeEmail() async {
    return await _sharedPreferences.remove(Keys.Email.toString());
  }
}
