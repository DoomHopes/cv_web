import 'dart:ui';

import 'package:cv_web/utils/locale_provider.dart';
import 'package:cv_web/utils/theme_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final double titleSize = 25;

  final double textSize = 15;

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var _themeProvider = Provider.of<ThemeChanger>(context);
    var _localeProvider = Provider.of<LocaleChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cv Alexandr Udovitsky'),
        actions: <Widget>[
          ElevatedButton(
            child: Text(S.of(context).ChangeTheme),
            onPressed: () {
              _themeProvider.setTheme(_themeProvider.getTheme == lightTheme
                  ? darkTheme
                  : lightTheme);
            },
          ),
          ElevatedButton(
            onPressed: () {
              _localeProvider.setLocale(
                  _localeProvider.getLocale == enLocale ? ruLocale : enLocale);
            },
            child:
                _localeProvider.getLocale == enLocale ? Text('Ru') : Text('En'),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SelectableText(
                        S.of(context).Udovitsky,
                        style: TextStyle(
                            fontSize: titleSize, fontWeight: FontWeight.bold),
                      ),
                      SelectableText(
                        S.of(context).Alexander,
                        style: TextStyle(
                            fontSize: titleSize, fontWeight: FontWeight.bold),
                      ),
                      SelectableText(
                        S.of(context).Sergeevich,
                        style: TextStyle(
                            fontSize: titleSize, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SelectableText(
                        '22.04.1999',
                        style: TextStyle(
                            fontSize: textSize, fontWeight: FontWeight.bold),
                      ),
                      SelectableText(
                        S.of(context).Nikolaev,
                        style: TextStyle(
                            fontSize: textSize, fontWeight: FontWeight.bold),
                      ),
                      SelectableText(
                        '+380(99)522-13-95',
                        style: TextStyle(
                            fontSize: textSize, fontWeight: FontWeight.bold),
                      ),
                      SelectableText(
                        'diadia1911@ukr.net',
                        style: TextStyle(
                            fontSize: textSize, fontWeight: FontWeight.bold),
                      ),
                      Linkify(
                        onOpen: (link) {
                          _launchInBrowser(link.url.toString());
                        },
                        text: "GitHub - https://github.com/DoomHopes",
                        style: TextStyle(color: Colors.blue),
                        linkStyle: TextStyle(color: Colors.green),
                      ),
                      Linkify(
                        onOpen: (link) {
                          _launchInBrowser(link.url.toString());
                        },
                        text:
                            "linkedin - https://www.linkedin.com/in/александр-удовицкий-43841a1bb/",
                        style: TextStyle(color: Colors.blue),
                        linkStyle: TextStyle(color: Colors.green),
                      ),
                    ],
                  )
                ],
              ),
              Divider(
                height: 20,
              ),
              Text(
                S.of(context).Skills,
                style:
                    TextStyle(fontSize: titleSize, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        ' - Flutter;',
                        style: TextStyle(
                            fontSize: textSize, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        ' - Dart;',
                        style: TextStyle(
                            fontSize: textSize, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        ' - ' +
                            S.of(context).ClientServer +
                            ' (with REST API);',
                        style: TextStyle(
                            fontSize: textSize, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        ' - Java (Android Studio);',
                        style: TextStyle(
                            fontSize: textSize, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        ' - SQL;',
                        style: TextStyle(
                            fontSize: textSize, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        ' - NoSQL (MongoDB, Hive);',
                        style: TextStyle(
                            fontSize: textSize, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        ' - MVP, MVC, MVVM;',
                        style: TextStyle(
                            fontSize: textSize, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        ' - ' + S.of(context).EnglishLevel,
                        style: TextStyle(
                            fontSize: textSize, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        ' - SOLID;',
                        style: TextStyle(
                            fontSize: textSize, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        ' - YAGNI;',
                        style: TextStyle(
                            fontSize: textSize, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        ' - DRY;',
                        style: TextStyle(
                            fontSize: textSize, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                height: 20,
              ),
              Text(
                S.of(context).Education,
                style:
                    TextStyle(fontSize: titleSize, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SelectableText(
                    '2014 – 2018 / ' + S.of(context).MBK,
                    style: TextStyle(
                        fontSize: textSize, fontWeight: FontWeight.bold),
                  ),
                  SelectableText(
                    S.of(context).SoftwareDeveloper,
                    style: TextStyle(
                        fontSize: textSize, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SelectableText(
                    '2018 – 2020 / ' + S.of(context).ITSTEP,
                    style: TextStyle(
                        fontSize: textSize, fontWeight: FontWeight.bold),
                  ),
                  SelectableText(
                    S.of(context).SoftwareDeveloper,
                    style: TextStyle(
                        fontSize: textSize, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              Divider(
                height: 20,
              ),
              Text(
                S.of(context).WorkExperience,
                style:
                    TextStyle(fontSize: titleSize, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              SelectableText(
                S.of(context).FirstExp,
                style:
                    TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
              ),
              SelectableText(
                S.of(context).FirstExpSubtitle,
                style: TextStyle(
                    fontSize: textSize, fontWeight: FontWeight.normal),
              ),
              Divider(
                height: 20,
              ),
              Text(
                S.of(context).AboutMe,
                style:
                    TextStyle(fontSize: titleSize, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              SelectableText(
                S.of(context).MyDescription,
                style: TextStyle(
                    fontSize: textSize, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
