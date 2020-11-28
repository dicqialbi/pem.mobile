import 'dart:io';
import 'dart:ui';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:project_mobile_app/custWid/biodata/biodata1.dart';

class Biodata extends StatefulWidget {
  @override
  _BiodataState createState() => _BiodataState();
}

class _BiodataState extends State<Biodata> {
  File berkasGambar;

  _openGaleri(BuildContext context) async {
    // ignore: deprecated_member_use
    var gambar = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      berkasGambar = gambar;
    });
    Navigator.of(context).pop();
  }

  _openKamera(BuildContext context) async {
    // ignore: deprecated_member_use
    var pickImage = ImagePicker.pickImage(source: ImageSource.camera);
    var gambar = await pickImage;
    this.setState(() {
      berkasGambar = gambar;
    });
    Navigator.of(context).pop();
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Pilih Gambar dari?",
                style: TextStyle(
                    color: Colors.deepOrange, fontWeight: FontWeight.bold)),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text("Galeri"),
                    onTap: () {
                      _openGaleri(context);
                    },
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  GestureDetector(
                    child: Text("Kamera"),
                    onTap: () {
                      _openKamera(context);
                    },
                  )
                ],
              ),
            ),
          );
        });
  }

  // ignore: missing_return
  Widget _viewGambarImport() {
    if (berkasGambar == null) {
      return Center(
          child: Text("Gambar belum diatur!",
              style: TextStyle(color: Colors.black54)));
    } else {
      Image.file(berkasGambar, height: 200, width: 200);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: ListView(
        children: <Widget>[
          Data(),
          MyUploadFile(Colors.deepOrange, "Kartu Keluarga"),
          MyUploadFile(Colors.orange, "KTP"),
          MyUploadFile(Colors.deepOrange, "Slip Gaji"),
          MyUploadFile(Colors.orange, "Surat Tanah")
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container MyUploadFile(Color colorIcon, String teks) {
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
                  height: 100,
                  width: 200,
                  child: _viewGambarImport(),
                ),
                Container(
                  child: IconButton(
                    icon: Icon(
                      Icons.cloud_upload,
                      size: 35,
                    ),
                    color: colorIcon,
                    tooltip: "Upload",
                    onPressed: () {
                      _showChoiceDialog(context);
                    },
                  ),
                ),
                Text(
                  teks,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
