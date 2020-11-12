import 'package:flutter/material.dart';
import 'package:project_mobile_app/home.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text("INI HALAMAN PROFIL"),
        ),
        body: Center(
          child: RaisedButton(child: Text("BACK TO DASHBOARD"),
          onPressed: (){
            Navigator.pop(context, MaterialPageRoute(builder: (context){
              return MainPage();
            }));
          },)
        ),
      ),
    );
  }
}

