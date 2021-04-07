import 'package:cv_web/generated/l10n.dart';
import 'package:cv_web/utils/constants.dart';
import 'package:flutter/cupertino.dart';

class SkillsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              ' - Flutter;',
              style:
                  TextStyle(fontSize: kTextSize, fontWeight: FontWeight.normal),
            ),
            Text(
              ' - Dart;',
              style:
                  TextStyle(fontSize: kTextSize, fontWeight: FontWeight.normal),
            ),
            Text(
              ' - Provider + ChangeNotifier;',
              style:
                  TextStyle(fontSize: kTextSize, fontWeight: FontWeight.normal),
            ),
            Text(
              ' - ' + S.of(context).ClientServer + ' (with REST API);',
              style:
                  TextStyle(fontSize: kTextSize, fontWeight: FontWeight.normal),
            ),
            Text(
              ' - Java (Android Studio);',
              style:
                  TextStyle(fontSize: kTextSize, fontWeight: FontWeight.normal),
            ),
            Text(
              ' - SQL;',
              style:
                  TextStyle(fontSize: kTextSize, fontWeight: FontWeight.normal),
            ),
            Text(
              ' - NoSQL (MongoDB, Hive);',
              style:
                  TextStyle(fontSize: kTextSize, fontWeight: FontWeight.normal),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              ' - MVP, MVC, MVVM;',
              style:
                  TextStyle(fontSize: kTextSize, fontWeight: FontWeight.normal),
            ),
            Text(
              ' - ' + S.of(context).EnglishLevel,
              style:
                  TextStyle(fontSize: kTextSize, fontWeight: FontWeight.normal),
            ),
            Text(
              ' - SOLID;',
              style:
                  TextStyle(fontSize: kTextSize, fontWeight: FontWeight.normal),
            ),
            Text(
              ' - YAGNI;',
              style:
                  TextStyle(fontSize: kTextSize, fontWeight: FontWeight.normal),
            ),
            Text(
              ' - DRY;',
              style:
                  TextStyle(fontSize: kTextSize, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ],
    );
  }
}
