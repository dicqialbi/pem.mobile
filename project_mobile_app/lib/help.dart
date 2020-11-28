import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class MyHelp extends StatefulWidget {
  @override
  _MyHelpState createState() => _MyHelpState();
}

class _MyHelpState extends State<MyHelp> {
  TextEditingController _helpController = TextEditingController();
  final _helpKey = GlobalKey<FormState>();
  var pertanyaan = "";

  void simpanData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("pertanyaan", _helpController.text);
  }

  Future<String> getData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("pertanyaan") ?? "Tidak ada Pertanyaan";
  }

  // void kirimPertanyaan() {
  //   AlertDialog alertDialog = new AlertDialog(
  //       content: new Container(
  //     margin: EdgeInsets.all(5),
  //     height: 70,
  //     child: Center(
  //       child: Column(
  //         children: <Widget>[
  //           Text(
  //             "Pertanyaan berhasil dikirim!",
  //             style: TextStyle(
  //                 fontSize: 18,
  //                 color: Colors.deepOrange,
  //                 fontWeight: FontWeight.bold),
  //           ),
  //           RaisedButton(
  //               child: Text("OK"), onPressed: () => Navigator.pop(context))
  //         ],
  //       ),
  //     ),
  //   ));
  //   showDialog(context: context, child: alertDialog);
  // }

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
                      fontSize: 25)),
            ]),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.fromLTRB(0, 25, 0, 5),
                  height: MediaQuery.of(context).size.height * 1 / 4,
                  child: Image(image: AssetImage("images/help.png"))),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1))
                    ],
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.deepOrange, Colors.orange])),
                child: Text(
                  "Apa Yang Bisa Kami Bantu?",
                  style: TextStyle(
                      fontFamily: "Poppin", fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Form(
                  key: _helpKey,
                  child: TextFormField(
                    onChanged: (s) {
                      pertanyaan = s;
                    },
                    controller: _helpController,
                    keyboardType: TextInputType.name,
                    validator: (val) =>
                        val.isEmpty ? "Isi pertanyaan terlebih dahulu!" : null,
                    textInputAction: TextInputAction.go,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange)),
                      hintText: "Masukan pertanyaan anda disini...",
                      hintStyle:
                          TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.send),
                        color: Colors.deepOrange,
                        tooltip: "Kirim",
                        onPressed: () {
                          if (_helpKey.currentState.validate()) {}
                          simpanData();
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 0))
                    ]),
                child: RaisedButton(
                  child: Text("lihat pertanyaan"),
                  onPressed: () {
                    getData().then((s) {
                      _helpController.text = s;
                      setState(() {});
                    });
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
