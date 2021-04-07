import 'package:flutter/material.dart';

var enLocale = Locale('en');
var ruLocale = Locale('ru');

class LocaleChanger extends ChangeNotifier {
  Locale _localeData;
  LocaleChanger(this._localeData);

  get getLocale => _localeData;
  void setLocale(Locale locale) {
    _localeData = locale;
    notifyListeners();
  }
}
