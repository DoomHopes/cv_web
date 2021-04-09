import 'package:cv_web/generated/l10n.dart';
import 'package:cv_web/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EducationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SelectableText(
          '2014 – 2018 / ' + S.of(context).MBK,
          style: kTextStyle,
        ),
        SelectableText(
          S.of(context).SoftwareDeveloper,
          style: kTextStyle,
        ),
        SizedBox(
          height: 5,
        ),
        SelectableText(
          '2018 – 2020 / ' + S.of(context).ITSTEP,
          style: kTextStyle,
        ),
        SelectableText(
          S.of(context).SoftwareDeveloper,
          style: kTextStyle,
        ),
      ],
    );
  }
}
