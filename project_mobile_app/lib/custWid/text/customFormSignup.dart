import 'package:flutter/material.dart';
import 'package:project_mobile_app/signup2.dart';

class MyCustomField extends StatefulWidget {
  @override
  MyCustomFieldState createState() {
    return MyCustomFieldState();
  }
}

class MyCustomFieldState extends State<MyCustomField> {
  TextEditingController _depanController = TextEditingController();
  TextEditingController _belakangController = TextEditingController();
  TextEditingController _ttlController = TextEditingController();
  TextEditingController _alamatController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MyForm(
                _depanController,
                "Nama Depan",
                "Nama Depan tidak boleh kosong!",
                Colors.deepOrange,
                TextInputType.name,
                false),
            MyForm(
                _belakangController,
                "Nama Belakang",
                "Nama Belakang tidak boleh kosong!",
                Colors.orange,
                TextInputType.name,
                false),
            MyForm(
                _ttlController,
                "Tanggal lahir",
                "Tanggal lahir tidak boleh kosong!",
                Colors.deepOrange,
                TextInputType.datetime,
                false),
            MyForm(_alamatController, "Alamat", "Alamat tidak boleh kosong!",
                Colors.orange, TextInputType.streetAddress, false),
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                      width: 150,
                      height: 35,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.deepOrange,
                        splashColor: Colors.white,
                        child: Container(
                          child: Text(
                            "LANJUT",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            // Scaffold.of(context).showSnackBar(
                            //     SnackBar(content: Text('Selamat Datang!')));
                            Duration(seconds: 2);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpPage2()));
                          }
                        },
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  TextFormField MyForm(TextEditingController controller, String namaForm,
      String danger, Color warnaIcon, TextInputType type, bool passwd) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      validator: (val) => val.isEmpty ? danger : null,
      textInputAction: TextInputAction.go,
      obscureText: passwd,
      decoration: InputDecoration(
          icon: Icon(
            Icons.person,
            color: warnaIcon,
          ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.orange)),
          hintText: namaForm,
          hintStyle: TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
    );
  }
}
