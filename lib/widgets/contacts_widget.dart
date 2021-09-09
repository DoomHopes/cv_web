import 'package:cv_web/generated/l10n.dart';
import 'package:cv_web/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        Row(
          children: <Widget>[
            Icon(
              Icons.add_location,
              color: Colors.blueAccent,
              size: 10.0,
            ),
            Text(
              S.of(context).Nikolaev,
              overflow: TextOverflow.clip,
              style: kTextStyle,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.phone,
              color: Colors.blueAccent,
              size: 10.0,
            ),
            Text(
              '+380(99)522-13-95',
              overflow: TextOverflow.clip,
              style: kTextStyle,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.mail,
              color: Colors.blueAccent,
              size: 10.0,
            ),
            Text(
              'ukr.net - diadia1911@ukr.net',
              overflow: TextOverflow.clip,
              style: kTextStyle,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.mail,
              color: Colors.blueAccent,
              size: 10.0,
            ),
            Text(
              'gmail - alex.udovickiy1911@gmail.com',
              overflow: TextOverflow.clip,
              style: kTextStyle,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Text(
              'GitHub - ',
              overflow: TextOverflow.clip,
              style: kTextStyle,
            ),
            Linkify(
              onOpen: (link) {
                _launchInBrowser(link.url.toString());
              },
              text: "https://github.com/DoomHopes",
              style: kLinkStyle,
              linkStyle: kLinkStyle,
              overflow: TextOverflow.clip,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Text(
              'Linkedin - ',
              overflow: TextOverflow.clip,
              style: kTextStyle,
            ),
            Linkify(
              onOpen: (link) {
                _launchInBrowser(link.url.toString());
              },
              text: "https://clck.ru/UFAyN",
              style: kLinkStyle,
              linkStyle: kLinkStyle,
              overflow: TextOverflow.clip,
            ),
          ],
        ),
      ],
    );
  }
}
