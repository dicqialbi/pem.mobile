import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyBeritaLengkap extends StatelessWidget {
  MyBeritaLengkap(this.gambar, this.tanggal, this.judul, this.isi);
  AssetImage gambar;
  var tanggal;
  var judul;
  var isi;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, 0))
          ],
          color: Colors.white),
      child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10,10,10,2),
            height: MediaQuery.of(context).size.width / 2,
            width: MediaQuery.of(context).size.width / 1,
            child: Image(image: gambar, fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0,0,10,0),
            child: Text(
              tanggal,
              style:
                  TextStyle(color: Colors.black54, fontStyle: FontStyle.italic),
                  textAlign: TextAlign.right,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              judul,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              isi,
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
