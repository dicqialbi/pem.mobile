import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:project_mobile_app/akun.dart';

class MyName extends StatefulWidget {
  @override
  _MyNameState createState() => _MyNameState();
}

class _MyNameState extends State<MyName> {
  TextEditingController namaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("SIMPEDAS",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w900,
                      fontSize: 25))
            ]),
      ),
      body: ListView(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(20),
              height: 150,
              child: Image(image: AssetImage("images/assets_logo.png"))),
          Text(
            "UBAH NAMA LENGKAP",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
            textAlign: TextAlign.center,
          ),
          Form(
              child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1.0, color: Colors.black12)),
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: namaController,
                  keyboardType: TextInputType.name,
                  validator: (val) => val.isEmpty ? "Harap isi data!" : null,
                  textInputAction: TextInputAction.go,
                  obscureText: false,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange)),
                    labelText: "Nama Depan",
                  ),
                ),
                TextFormField(
                  controller: namaController,
                  keyboardType: TextInputType.name,
                  validator: (val) => val.isEmpty ? "Harap isi data!" : null,
                  textInputAction: TextInputAction.go,
                  obscureText: false,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange)),
                    labelText: "Nama Belakang",
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      child: RaisedButton(
                        color: Colors.red,
                        onPressed: () {
                          Navigator.pop(
                              context,
                              PageTransition(
                                  type: PageTransitionType.scale,
                                  child: MyAkun()));
                        },
                        child: Text(
                          "BATAL",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: Colors.green,
                      onPressed: () {
                        Navigator.pop(
                            context,
                            PageTransition(
                                type: PageTransitionType.scale,
                                child: MyAkun()));
                      },
                      child: Text("SIMPAN",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
