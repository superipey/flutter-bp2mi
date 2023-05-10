import 'package:belajar_flutter_bp2mi/layouts/myappbar.dart';
import 'package:belajar_flutter_bp2mi/layouts/mybottomnav.dart';
import 'package:flutter/material.dart';

class suratmasuk extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _suratmasukState();
}

class _suratmasukState extends State<suratmasuk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: myappbar(),
      ),
      bottomNavigationBar: mybottomnav(),
    );
  }

}