import 'package:cv_web/generated/l10n.dart';
import 'package:cv_web/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeadWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            S.of(context).Udovitsky +
                ' ' +
                S.of(context).Alexander +
                ' ' +
                S.of(context).Sergeevich,
            style: kTitleStyle,
          ),
          Text('Junior Flutter developer'),
        ],
      ),
    );
  }
}
