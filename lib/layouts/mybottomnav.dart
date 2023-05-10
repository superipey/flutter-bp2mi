import 'package:belajar_flutter_bp2mi/layouts/myappbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../suratmasuk.dart';

class mybottomnav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _mybottomnavState();
}

class _mybottomnavState extends State<mybottomnav> {
  int index = 0;

  void onBottomNavTapped(int index) {
    setState(() {
      this.index = index;

      if (index == 1) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => suratmasuk()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.black,
      currentIndex: index,
      unselectedLabelStyle: TextStyle(color: Colors.black),
      onTap: onBottomNavTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.message),
          label: "Surat Masuk",
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.message),
          label: "Surat Masuk",
        )
      ],
    );
  }

}