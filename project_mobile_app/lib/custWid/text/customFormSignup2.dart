import 'package:flutter/material.dart';
import 'package:project_mobile_app/login2.dart';

class MySignup extends StatefulWidget {
  @override
  MySignupState createState() {
    return MySignupState();
  }
}

class MySignupState extends State<MySignup> {
  TextEditingController _namaController = TextEditingController();
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
            MyForm(
                _namaController,
                "Nama Pengguna",
                "Nama Pengguna tidak boleh kosong!",
                Colors.deepOrange,
                TextInputType.name,
                false),
            MyForm(_emailController, "Email", "Email tidak boleh kosong",
                Colors.orange, TextInputType.emailAddress, false),
            MyForm(
                _passwordController,
                "Kata sandi",
                "Kata sandi tidak boleh kosong!",
                Colors.deepOrange,
                TextInputType.visiblePassword,
                true),
            MyForm(
                _confirmPasswordController,
                "Konfirmasi kata sandi",
                "Konfirmasi kata sandi tidak boleh kosong!",
                Colors.orange,
                TextInputType.visiblePassword,
                true),
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
