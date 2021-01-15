import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MyForm());

class MyForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Surat';
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    borderRadius: BorderRadius.circular(10),
                    splashColor: Colors.deepOrange,
                    onTap: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) {
                            return MainPage();
                          }));
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  Text("Form Surat",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                          fontSize: 20))
                ]),
         ),
        body: MyCustomForm(),
      ));
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset: Offset(1, 1))
                ],
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Jenis Surat'
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Harap diisi';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset: Offset(1, 1))
                ],
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Nama Lengkap'
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Harap diisi';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset: Offset(1, 1))
                ],
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Jenis Kelamin'
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Harap diisi';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset: Offset(1, 1))
                ],
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Agama'
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Harap diisi';
                  }
                  return null;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset: Offset(1, 1))
                ],
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Alamat'
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Harap diisi';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false
                  // otherwise.
                  if (_formKey.currentState.validate()) {
                    // If the form is valid, display a Snackbar.
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('Processing Data')));
                  }
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

