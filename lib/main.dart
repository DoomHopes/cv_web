import 'dart:ui';

import 'package:cv_web/utils/theme_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeChanger(lightTheme)),
      ],
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      title: 'Cv Alexandr Udovickiy',
      theme: theme.getTheme,
      debugShowCheckedModeBanner: false,
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Cv Alexandr Udovitsky'),
        actions: <Widget>[
          ElevatedButton(
            child: Text('Change Theme'),
            onPressed: () {
              _themeProvider.setTheme(_themeProvider.getTheme == lightTheme
                  ? darkTheme
                  : lightTheme);
            },
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
                        'Udovitsky',
                        style: TextStyle(
                            fontSize: titleSize, fontWeight: FontWeight.bold),
                      ),
                      SelectableText(
                        'Alexander',
                        style: TextStyle(
                            fontSize: titleSize, fontWeight: FontWeight.bold),
                      ),
                      SelectableText(
                        'Sergeevich',
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
                        'Mykolaiyv',
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
                    ],
                  )
                ],
              ),
              Divider(
                height: 20,
              ),
              Text(
                'Skills',
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
                        ' - Client-server apps dev experience (with REST API);',
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
                        ' - English documentation reading level;',
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
                'Edication',
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
                    '2014 – 2018 / Mykolayiv building college Kyiv national building and architectural university',
                    style: TextStyle(
                        fontSize: textSize, fontWeight: FontWeight.bold),
                  ),
                  SelectableText(
                    ' Software developer',
                    style: TextStyle(
                        fontSize: textSize, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SelectableText(
                    '2018 – 2020 / IT STEP',
                    style: TextStyle(
                        fontSize: textSize, fontWeight: FontWeight.bold),
                  ),
                  SelectableText(
                    ' Software developer',
                    style: TextStyle(
                        fontSize: textSize, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              Divider(
                height: 20,
              ),
              Text(
                'Work experience',
                style:
                    TextStyle(fontSize: titleSize, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              SelectableText(
                'January 2021 – February 2021/ Devsteam.mobi',
                style:
                    TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
              ),
              SelectableText(
                'did an internship, was engaged in program refactoring',
                style: TextStyle(
                    fontSize: textSize, fontWeight: FontWeight.normal),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'About me',
                style:
                    TextStyle(fontSize: titleSize, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              SelectableText(
                'Really love programming, purposeful, able to solve business problems. I get along well with people, I will be glad to work in a friendly team with experience',
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
