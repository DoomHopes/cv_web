import 'package:cv_web/generated/l10n.dart';
import 'package:cv_web/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

import 'title_widget.dart';

class ContactsWidget extends StatelessWidget {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TitleWidget(
          text: 'Contacts',
        ),
        Text(
          S.of(context).Nikolaev,
          overflow: TextOverflow.clip,
          style: kTextStyle,
        ),
        Text(
          '+380(99)522-13-95',
          overflow: TextOverflow.clip,
          style: kTextStyle,
        ),
        Text(
          'ukr.net - diadia1911@ukr.net',
          overflow: TextOverflow.clip,
          style: kTextStyle,
        ),
        Text(
          'gmail - alex.udovickiy1911@gmail.com',
          overflow: TextOverflow.clip,
          style: kTextStyle,
        ),
        Linkify(
          onOpen: (link) {
            _launchInBrowser(link.url.toString());
          },
          text: "GitHub - https://github.com/DoomHopes",
          style: kLinkStyle,
          linkStyle: kLinkStyle,
          overflow: TextOverflow.clip,
        ),
        Linkify(
          onOpen: (link) {
            _launchInBrowser(link.url.toString());
          },
          text: "linkedin - https://clck.ru/UFAyN",
          style: kLinkStyle,
          linkStyle: kLinkStyle,
          overflow: TextOverflow.clip,
        ),
      ],
    );
  }
}
