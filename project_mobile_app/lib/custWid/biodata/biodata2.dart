import 'package:flutter/material.dart';
import 'package:project_mobile_app/custWid/biodata/biodata1.dart';

class Biodata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: ListView(
        children: <Widget>[
          Data(),
          MyUploadFile(Colors.deepOrange,"Upload Kartu Keluarga disini!"),
          MyUploadFile(Colors.orange,"Upload semua KTP yang sudah dijadikan satu File"),
          MyUploadFile(Colors.deepOrange,"Upload Slip Gaji disini!"),
          MyUploadFile(Colors.orange,"Upload Surat Tanah disini!")
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container MyUploadFile(Color colorIcon ,String teks) {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 0))
        ], borderRadius: BorderRadius.circular(5), color: Colors.white),
        child: Column(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.cloud_upload,
                      color: colorIcon,
                      size: 35,
                    ),
                  ),
                  Text(
                    teks,
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.black54),
                  )
                ],
              ),
            ),
          ],
        ),
      );
  }
}
