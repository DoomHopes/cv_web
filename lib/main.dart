import 'dart:ui';

import 'package:cv_web/pages/home_page.dart';
import 'package:cv_web/utils/locale_provider.dart';
import 'package:cv_web/utils/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeChanger(lightTheme)),
        ChangeNotifierProvider(create: (_) => LocaleChanger(Locale('en'))),
      ],
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    final locale = Provider.of<LocaleChanger>(context);
    return MaterialApp(
      title: 'Cv Alexandr Udovickiy',
      theme: theme.getTheme,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: locale.getLocale,
      supportedLocales: S.delegate.supportedLocales,
      home: MyHomePage(),
    );
  }
}
