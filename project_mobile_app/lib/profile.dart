import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_mobile_app/custWid/buttonProfile.dart';
import 'package:project_mobile_app/home.dart';
import 'package:project_mobile_app/login.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  splashColor: Colors.deepOrange,
                  onTap: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) {
                      return MainPage();
                    }));
                  },
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
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
            Center(
                child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: Offset(0, 5))
                      ],
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("images/group.jpg"),
                          fit: BoxFit.cover)),
                ),
                Text(
                  "KELOMPOK N",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppin'),
                ),
                Text("Pemrograman@berbasis.MobileB"),
              ],
            )),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 0,
                      offset: Offset(2, 2))
                ],
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Column(
                children: <Widget>[
                  MyButtonProfile(Icons.person, "Akun", Colors.deepOrange),
                  MyButtonProfile(Icons.help, "Bantuan", Colors.orange),
                  MyButtonProfile(Icons.info, "Tentang", Colors.deepOrange)
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  splashColor: Colors.orange,
                  onTap: () {
                    Duration(microseconds: 1);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    }));
                  },
                  child: MyButtonProfile(
                      Icons.assignment_return, "Keluar", Colors.orange),
                ))
          ],
        ),
      ),
    );
  }
}
