// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Change Theme`
  String get ChangeTheme {
    return Intl.message(
      'Change Theme',
      name: 'ChangeTheme',
      desc: '',
      args: [],
    );
  }

  /// `Udovitsky`
  String get Udovitsky {
    return Intl.message(
      'Udovitsky',
      name: 'Udovitsky',
      desc: '',
      args: [],
    );
  }

  /// `Alexander`
  String get Alexander {
    return Intl.message(
      'Alexander',
      name: 'Alexander',
      desc: '',
      args: [],
    );
  }

  /// `Sergeevich`
  String get Sergeevich {
    return Intl.message(
      'Sergeevich',
      name: 'Sergeevich',
      desc: '',
      args: [],
    );
  }

  /// `Nikolaev`
  String get Nikolaev {
    return Intl.message(
      'Nikolaev',
      name: 'Nikolaev',
      desc: '',
      args: [],
    );
  }

  /// `Skills`
  String get Skills {
    return Intl.message(
      'Skills',
      name: 'Skills',
      desc: '',
      args: [],
    );
  }

  /// `Client-server apps dev experience`
  String get ClientServer {
    return Intl.message(
      'Client-server apps dev experience',
      name: 'ClientServer',
      desc: '',
      args: [],
    );
  }

  /// `English documentation reading level`
  String get EnglishLevel {
    return Intl.message(
      'English documentation reading level',
      name: 'EnglishLevel',
      desc: '',
      args: [],
    );
  }

  /// `Education`
  String get Education {
    return Intl.message(
      'Education',
      name: 'Education',
      desc: '',
      args: [],
    );
  }

  /// `Mykolayiv building college Kyiv national building and architectural university`
  String get MBK {
    return Intl.message(
      'Mykolayiv building college Kyiv national building and architectural university',
      name: 'MBK',
      desc: '',
      args: [],
    );
  }

  /// ` Software developer`
  String get SoftwareDeveloper {
    return Intl.message(
      ' Software developer',
      name: 'SoftwareDeveloper',
      desc: '',
      args: [],
    );
  }

  /// `IT STEP`
  String get ITSTEP {
    return Intl.message(
      'IT STEP',
      name: 'ITSTEP',
      desc: '',
      args: [],
    );
  }

  /// `Work experience`
  String get WorkExperience {
    return Intl.message(
      'Work experience',
      name: 'WorkExperience',
      desc: '',
      args: [],
    );
  }

  /// `January 2021 – February 2021/ Devsteam.mobi`
  String get FirstExp {
    return Intl.message(
      'January 2021 – February 2021/ Devsteam.mobi',
      name: 'FirstExp',
      desc: '',
      args: [],
    );
  }

  /// `did an internship, was engaged in program refactoring`
  String get FirstExpSubtitle {
    return Intl.message(
      'did an internship, was engaged in program refactoring',
      name: 'FirstExpSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `About me`
  String get AboutMe {
    return Intl.message(
      'About me',
      name: 'AboutMe',
      desc: '',
      args: [],
    );
  }

  /// `Really love programming, purposeful, able to solve business problems. I get along well with people, I will be glad to work in a friendly team with experience`
  String get MyDescription {
    return Intl.message(
      'Really love programming, purposeful, able to solve business problems. I get along well with people, I will be glad to work in a friendly team with experience',
      name: 'MyDescription',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}