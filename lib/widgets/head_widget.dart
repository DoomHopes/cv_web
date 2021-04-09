import 'package:cv_web/generated/l10n.dart';
import 'package:cv_web/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class HeadWidget extends StatelessWidget {
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        /*Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SelectableText(
              S.of(context).Udovitsky,
              style: kTitleStyle,
            ),
            SelectableText(
              S.of(context).Alexander,
              style: kTitleStyle,
            ),
            SelectableText(
              S.of(context).Sergeevich,
              style: kTitleStyle,
            ),
          ],
        ),*/
        Text(
          S.of(context).Udovitsky +
              '\n' +
              S.of(context).Alexander +
              '\n' +
              S.of(context).Sergeevich,
          style: kTitleStyle,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SelectableText(
              '22.04.1999' +
                  '\n' +
                  S.of(context).Nikolaev +
                  '\n' +
                  '+380(99)522-13-95' +
                  '\n' +
                  'diadia1911@ukr.net',
              style: kTextStyle,
            ),
            Linkify(
              onOpen: (link) {
                _launchInBrowser(link.url.toString());
              },
              text: "GitHub - https://github.com/DoomHopes",
              style: kLinkStyle,
              linkStyle: kLinkStyle,
            ),
            Linkify(
              onOpen: (link) {
                _launchInBrowser(link.url.toString());
              },
              text:
                  "linkedin - https://www.linkedin.com/in/александр-удовицкий-43841a1bb/",
              style: kLinkStyle,
              linkStyle: kLinkStyle,
            ),
          ],
        )
      ],
    );
  }
}
