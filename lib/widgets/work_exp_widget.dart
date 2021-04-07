import 'package:cv_web/generated/l10n.dart';
import 'package:cv_web/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkExpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SelectableText(
          S.of(context).FirstExp,
          style: TextStyle(fontSize: kTextSize, fontWeight: FontWeight.bold),
        ),
        SelectableText(
          S.of(context).FirstExpSubtitle,
          style: TextStyle(fontSize: kTextSize, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
