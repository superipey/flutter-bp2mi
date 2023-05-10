import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class myhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
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
        )
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Text('Nomor Surat'), flex: 1),
                Expanded(child: TextField(), flex: 3)
              ],
            ),
            Row(
              children: [
                Expanded(child: Text('Perihal'), flex: 1),
                Expanded(child: TextField(), flex: 3)
              ],
            ),
            Row(
              children: [
                Expanded(child: Text('Nomor'), flex: 1),
                Expanded(child: TextField(
                  keyboardType: TextInputType.number,
                ), flex: 3)
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home),
              label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.message),
            label: "Surat Masuk",
          ),
        ],
      ),
    );
  }
}