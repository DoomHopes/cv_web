import 'package:cv_web/generated/l10n.dart';
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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cv Alexandr Udovickiy'),
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
