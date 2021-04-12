import 'package:cv_web/generated/l10n.dart';
import 'package:cv_web/utils/constants.dart';
import 'package:flutter/cupertino.dart';

class SkillsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          ' - Flutter;',
          style: kTextStyle,
        ),
        Text(
          ' - Dart;',
          style: kTextStyle,
        ),
        Text(
          ' - Provider + ChangeNotifier;',
          style: kTextStyle,
        ),
        Text(
          ' - ' + S.of(context).ClientServer + ' (with REST API);',
          style: kTextStyle,
        ),
        Text(
          ' - Java (Android Studio);',
          style: kTextStyle,
        ),
        Text(
          ' - SQL;',
          style: kTextStyle,
        ),
        Text(
          ' - NoSQL (MongoDB, Hive);',
          style: kTextStyle,
        ),
        Text(
          ' - MVP, MVC, MVVM;',
          style: kTextStyle,
        ),
        Text(
          ' - ' + S.of(context).EnglishLevel,
          style: kTextStyle,
        ),
        Text(
          ' - SOLID;',
          style: kTextStyle,
        ),
        Text(
          ' - YAGNI;',
          style: kTextStyle,
        ),
        Text(
          ' - DRY;',
          style: kTextStyle,
        ),
      ],
    );
  }
}
