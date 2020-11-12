import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:page_transition/page_transition.dart';
import 'package:project_mobile_app/berita.dart';
import 'package:project_mobile_app/biodata.dart';
import 'package:project_mobile_app/custWid/customBar.dart';
import 'package:project_mobile_app/dashboard.dart';
import 'package:project_mobile_app/profile.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.deepOrange,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              InkWell(
                borderRadius: BorderRadius.circular(20),
                splashColor: Colors.deepOrange,
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.leftToRight,
                          child: ProfilePage()));
                },
                child: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              Text(
                "SIMPEDAS",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w900,
                    fontSize: 25),
              )
            ],
          ),
        ),
        body: Stack(
          children: <Widget>[
            PageView(
              onPageChanged: (index){ print("halaman :" + index.toString());},
              children: <Widget>[
                Dashboard(),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 120, 0, 0),
                  child: Biodata()
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: ListView(
                    children: <Widget>[
                      Berita()
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                CustomBar()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
