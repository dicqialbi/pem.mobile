import 'package:flutter/material.dart';
import 'package:project_mobile_app/login2.dart';

class MyCustomField extends StatefulWidget {
  // MyCustomForm(this.iconForm, this.textForm, this.isTeksForm, this.typeText,
  //     this.colorIcon, this.colorTeks);
  // IconData iconForm;
  // var textForm;
  // final bool isTeksForm;
  // TextInputType typeText;
  // final Color colorIcon;
  // final Color colorTeks;
  @override
  MyCustomFieldState createState() {
    return MyCustomFieldState();
  }
}

class MyCustomFieldState extends State<MyCustomField> {
  // IconData iconForm;
  // var textForm;
  // TextInputType typeText;
  // final bool isTeksForm = true;
  // Color colorIcon;
  // Color colorTeks;
  TextEditingController _namaController = TextEditingController();
  TextEditingController _alamatController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
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
            TextFormField(
              controller: _namaController,
              keyboardType: TextInputType.name,
              validator: (val) =>
                  val.isEmpty ? "Nama Pengguna tidak boleh kosong!" : null,
              textInputAction: TextInputAction.go,
              obscureText: false,
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Colors.deepOrange,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)),
                  labelText: "Nama Pengguna :",
                  labelStyle: TextStyle(color: Colors.black54, fontSize: 14)),
            ),
            TextFormField(
              controller: _alamatController,
              keyboardType: TextInputType.streetAddress,
              validator: (val) =>
                  val.isEmpty ? "Alamat tidak boleh kosong!" : null,
              textInputAction: TextInputAction.go,
              obscureText: false,
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.location_on,
                    color: Colors.orange,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)),
                  labelText: "Alamat :",
                  labelStyle: TextStyle(color: Colors.black54, fontSize: 14)),
            ),
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              validator: (val) =>
                  val.isEmpty ? "Email tidak boleh kosong!" : null,
              textInputAction: TextInputAction.go,
              obscureText: false,
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Colors.deepOrange,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)),
                  labelText: "Email :",
                  labelStyle: TextStyle(color: Colors.black54, fontSize: 14)),
            ),
            TextFormField(
              controller: _passwordController,
              keyboardType: TextInputType.visiblePassword,
              validator: (val) =>
                  val.isEmpty ? "Kata sandi tidak boleh kosong!" : null,
              textInputAction: TextInputAction.go,
              obscureText: true,
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.vpn_key,
                    color: Colors.orange,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)),
                  labelText: "Kata Sandi :",
                  labelStyle: TextStyle(color: Colors.black54, fontSize: 14)),
            ),
            TextFormField(
              controller: _confirmPasswordController,
              keyboardType: TextInputType.name,
              validator: (val) =>
                  val.isEmpty ? "Kata Sandi tidak boleh kosong!" : null,
              textInputAction: TextInputAction.go,
              obscureText: true,
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.vpn_key,
                    color: Colors.deepOrange,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)),
                  labelText: "Konfirmasi Kata Sandi :",
                  labelStyle: TextStyle(color: Colors.black54, fontSize: 14)),
            ),
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
                            "DAFTAR",
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
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SecondLoginPage()));
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
}
