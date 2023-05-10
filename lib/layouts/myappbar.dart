import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class myappbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.user),
        SizedBox(width: 10),
        Image(
          image: AssetImage('assets/logo_bp2mi.png'),
          width: 100,
          height: 100,
        ),
        SizedBox(width: 10),
        SizedBox(width: 10),
        Text("App BP2MI"),
      ],
    );
  }
}
