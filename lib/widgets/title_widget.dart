import 'package:cv_web/utils/constants.dart';
import 'package:flutter/cupertino.dart';

class TitleWidget extends StatelessWidget {
  final String text;
  TitleWidget({@required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: kTitleSize, fontWeight: FontWeight.bold),
    );
  }
}
