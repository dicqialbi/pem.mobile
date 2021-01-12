import 'package:flutter/material.dart';

void main() => runApp(MyForm());

class MyForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Surat';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
             decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Jenis Surat?'
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Harap diisi';
              }
              return null;
            },
          ),
          TextFormField(
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
          TextFormField(
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
          TextFormField(
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
          TextFormField(
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
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
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
  ),
              
            ),
          ),
        ],
      ),
    );
  }
}