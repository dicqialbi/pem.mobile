import 'package:flutter/material.dart';

class Biodata extends StatefulWidget {
  Biodata();

  @override
  _BiodataState createState() => _BiodataState();
}

class _BiodataState extends State<Biodata> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 7, top: 5),
                child: Text(
                  "Kepala Keluarga",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 12,
                      color: Colors.black26),
                ),
              ),
            ],
          ),
          Card(
            elevation: 0.5,
            child: Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      "Agus Susilo",
                      style: TextStyle(fontSize: 15, color: Colors.black87),
                    )),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 7, top: 5),
                child: Text(
                  "Anggota Keluarga",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 12,
                      color: Colors.black26),
                ),
              ),
            ],
          ),
          Card(
            elevation: 0.5,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                keluargaAgus("Istri Pertama"),
                keluargaAgus("Istri Kedua"),
                keluargaAgus("Istri Ketiga"),
                keluargaAgus("Anak Pertama Dari Istri Pertama"),
                keluargaAgus("Anak Pertama Dari Istri Kedua"),
                keluargaAgus("Anak Kedua Dari Istri Pertama"),
                keluargaAgus("Anak Pertama Dari Istri Ketiga"),
                keluargaAgus("Anak Ketiga Dari Istri Pertama"),
                keluargaAgus("Istri Simpanan")
              ],
            ),
          )
        ],
      ),
    );
  }

  Container keluargaAgus(String text) {
    return Container(
        margin: EdgeInsets.only(left: 5, top: 2),
        child: Text(
          text,
          style: TextStyle(fontSize: 15, color: Colors.black87),
        ));
  }
}
