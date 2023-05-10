import 'package:belajar_flutter_bp2mi/layouts/myappbar.dart';
import 'package:belajar_flutter_bp2mi/suratmasuk.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'layouts/mybottomnav.dart';

class home2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _home2State();
}

class Keaslian {
  int? id;
  String? text;

   Keaslian(int id, String text) {
     this.id = id;
     this.text = text;
   }
}

class _home2State extends State<home2> {
  bool stateSegera = false;
  bool stateDisposisi = false;

  List<Keaslian> listKeaslian = [
    Keaslian(1, "Asli"),
    Keaslian(2, "Salinan"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: myappbar(),
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
                  Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                      ),
                      flex: 3)
                ],
              ),
              Row(
                children: [
                  Expanded(child: Text('Disposisi'), flex: 1),
                  Expanded(
                      child: Row(
                        children: [
                          new Checkbox(
                            value: stateSegera,
                            onChanged: (newValue) {
                              setState(() {
                                stateSegera = newValue!;
                              });
                            },
                            activeColor: Colors.red,
                          ),
                          Text("Segera"),
                          new Checkbox(
                            value: stateDisposisi,
                            onChanged: (newValue) {
                              setState(() {
                                stateDisposisi = newValue!;
                              });
                            },
                            activeColor: Colors.red,
                          ),
                          Text("Disposisi")
                        ],
                      ),
                      flex: 3),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Text('Keaslian'), flex: 1),
                  Expanded(
                      child: DropdownButton(
                        onChanged: (int? value) {

                        },
                        items: listKeaslian.map((Keaslian value) {
                          return DropdownMenuItem<int>(
                            value: value.id,
                            child: Row(
                              children: [
                                Icon(FontAwesomeIcons.user),
                                SizedBox(width: 10),
                                Text(value.text.toString())
                              ],
                            )
                          );
                        }).toList(),
                      ),
                      flex: 3)
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: mybottomnav());
  }
}
