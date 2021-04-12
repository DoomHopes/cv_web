import 'package:cv_web/generated/l10n.dart';
import 'package:cv_web/utils/locale_provider.dart';
import 'package:cv_web/utils/theme_provider.dart';
import 'package:cv_web/widgets/description_widget.dart';
import 'package:cv_web/widgets/divider_widget.dart';
import 'package:cv_web/widgets/drawer_widget.dart';
import 'package:cv_web/widgets/education_widget.dart';
import 'package:cv_web/widgets/head_widget.dart';
import 'package:cv_web/widgets/my_sizedbox.dart';
import 'package:cv_web/widgets/skills_widget.dart';
import 'package:cv_web/widgets/title_widget.dart';
import 'package:cv_web/widgets/work_exp_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _themeProvider = Provider.of<ThemeChanger>(context);
    var _localeProvider = Provider.of<LocaleChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cv Alexandr Udovickiy'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Colors.red, Colors.blue],
            ),
          ),
        ),
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
      drawer: CustomDrawerWidget(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            HeadWidget(),
            MyDivider(),
            TitleWidget(
              text: S.of(context).Skills,
            ),
            MySizedBox(),
            SkillsWidget(),
            MyDivider(),
            TitleWidget(
              text: S.of(context).Education,
            ),
            MySizedBox(),
            EducationWidget(),
            MyDivider(),
            TitleWidget(
              text: S.of(context).WorkExperience,
            ),
            MySizedBox(),
            WorkExpWidget(),
            MyDivider(),
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
