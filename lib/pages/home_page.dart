import 'package:cv_web/generated/l10n.dart';
import 'package:cv_web/utils/locale_provider.dart';
import 'package:cv_web/utils/theme_provider.dart';
import 'package:cv_web/widgets/description_widget.dart';
import 'package:cv_web/widgets/education_widget.dart';
import 'package:cv_web/widgets/head_widget.dart';
import 'package:cv_web/widgets/my_sizedbox.dart';
import 'package:cv_web/widgets/skills_widget.dart';
import 'package:cv_web/widgets/title_widget.dart';
import 'package:cv_web/widgets/work_exp_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var _themeProvider = Provider.of<ThemeChanger>(context);
    var _localeProvider = Provider.of<LocaleChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cv Alexandr Udovitsky'),
        actions: <Widget>[
          Container(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              child: Text(S.of(context).ChangeTheme),
              onPressed: () {
                _themeProvider.setTheme(_themeProvider.getTheme == lightTheme
                    ? darkTheme
                    : lightTheme);
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                _localeProvider.setLocale(_localeProvider.getLocale == enLocale
                    ? ruLocale
                    : enLocale);
              },
              child: _localeProvider.getLocale == enLocale
                  ? Text('Ru')
                  : Text('En'),
            ),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            HeadWidget(),
            const Divider(
              height: 20,
            ),
            TitleWidget(
              text: S.of(context).Skills,
            ),
            MySizedBox(),
            SkillsWidget(),
            const Divider(
              height: 20,
            ),
            TitleWidget(
              text: S.of(context).Education,
            ),
            MySizedBox(),
            EducationWidget(),
            const Divider(
              height: 20,
            ),
            TitleWidget(
              text: S.of(context).WorkExperience,
            ),
            MySizedBox(),
            WorkExpWidget(),
            const Divider(
              height: 20,
            ),
            TitleWidget(
              text: S.of(context).AboutMe,
            ),
            MySizedBox(),
            DescriptionWidget(),
            MySizedBox(),
          ],
        ),
      ),
    );
  }
}
