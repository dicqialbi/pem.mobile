import 'package:flutter/material.dart';

class Data extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(5,5,0,0),
          child: Text(
            "Biodata",
            style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 15,
                fontStyle: FontStyle.italic),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 0))
          ], borderRadius: BorderRadius.circular(5), color: Colors.white),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Kepala Keluarga :",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontStyle: FontStyle.italic)),
              MyFamily("Agus Susilo Hadi"),
              Text("Anggota Keluarga :",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontStyle: FontStyle.italic)),
              MyFamily("Siti Aravah"),
              MyFamily("Siti Khotidjah"),
              MyFamily("Siti Maimunah"),
              MyFamily("Siti Munawaroh"),
              MyFamily("Nur Cahaya"),
              MyFamily("Bayu Chandra"),
              MyFamily("Chalvin Setiawan"),
              MyFamily("Zainul Hasan"),
              MyFamily("Chandra Setiawan"),
              MyFamily("Rudi Widodo")
            ],
          ),
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Text MyFamily(String nama) =>
      Text(nama, style: TextStyle(color: Colors.black54, fontSize: 13));
}
