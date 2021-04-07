import 'dart:ui';

import 'package:cv_web/utils/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
              SizedBox(
                height: 20,
                width: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' Udovitsky',
                    style: TextStyle(
                        fontSize: titleSize, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '22.04.1999',
                    style: TextStyle(
                        fontSize: textSize, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' Alexander',
                    style: TextStyle(
                        fontSize: titleSize, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Mykolaiyv',
                    style: TextStyle(
                        fontSize: textSize, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' Sergeevich',
                    style: TextStyle(
                        fontSize: titleSize, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '+380(99)522-13-95',
                        style: TextStyle(
                            fontSize: textSize, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'diadia1911@ukr.net',
                        style: TextStyle(
                            fontSize: textSize, fontWeight: FontWeight.bold),
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
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        ' - NoSQL (MongoDB, Hive);',
                        style: TextStyle(
                            fontSize: textSize, fontWeight: FontWeight.normal),
                      ),
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
                  Text(
                    '2014 – 2018 / Mykolayiv building college Kyiv national building and architectural university',
                    style: TextStyle(
                        fontSize: textSize, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' Software developer',
                    style: TextStyle(
                        fontSize: textSize, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '2018 – 2020 / IT STEP',
                    style: TextStyle(
                        fontSize: textSize, fontWeight: FontWeight.bold),
                  ),
                  Text(
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
              Text(
                'January 2021 – February 2021/ Devsteam.mobi',
                style:
                    TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
              ),
              Text(
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
              Text(
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
