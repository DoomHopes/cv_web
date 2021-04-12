import 'package:cv_web/generated/l10n.dart';
import 'package:cv_web/utils/locale_provider.dart';
import 'package:cv_web/utils/theme_provider.dart';
import 'package:cv_web/widgets/description_widget.dart';
import 'package:cv_web/widgets/divider_widget.dart';
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
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 5, blurRadius: 2)
          ]),
          width: 100,
          height: 100,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red, Colors.blue],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1, 0.5),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cv Alexandr Udovitsky",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          child: Text(S.of(context).ChangeTheme),
                          onPressed: () {
                            _themeProvider.setTheme(
                                _themeProvider.getTheme == lightTheme
                                    ? darkTheme
                                    : lightTheme);
                          },
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {
                            _localeProvider.setLocale(
                                _localeProvider.getLocale == enLocale
                                    ? ruLocale
                                    : enLocale);
                          },
                          child: _localeProvider.getLocale == enLocale
                              ? Text('Ru')
                              : Text('En'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
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
