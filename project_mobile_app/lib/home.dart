import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:page_transition/page_transition.dart';
import 'package:project_mobile_app/custWid/berita.dart';
import 'package:project_mobile_app/custWid/dashboard.dart';
import 'package:project_mobile_app/profile.dart';
import 'package:project_mobile_app/custWid/biodata.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicator: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 5,
                offset: Offset(0, 0))
          ]),
      tabs: <Widget>[
        Tab(
            icon: Icon(
              Icons.dashboard,
              color: Colors.deepOrange,
            ),
            child: Text("Beranda",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54))),
        Tab(
            icon: Icon(
              Icons.assignment,
              color: Colors.deepOrange,
            ),
            child: Text("Biodata",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54))),
        Tab(
            icon: Icon(
              Icons.public,
              color: Colors.deepOrange,
            ),
            child: Text("Berita",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54)))
      ],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepOrange,
            title: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: Container(
                height: 90,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3))
                    ],
                    gradient: LinearGradient(
                        colors: [Colors.deepOrange, Colors.orange],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: myTabBar,
                ),
              ),
            ),
          ),
          body: TabBarView(children: <Widget>[
            Dashboard(),
            Card(elevation: 0.5, child: Biodata()),
            Container(
              child: ListView(
                children: <Widget>[Berita()],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
