import 'package:cv_web/generated/l10n.dart';
import 'package:cv_web/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SelectableText(
      S.of(context).MyDescription,
      style: kTextStyle,
    );
  }
}
