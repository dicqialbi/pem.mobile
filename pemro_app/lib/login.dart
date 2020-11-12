import 'package:flutter/material.dart';
import 'package:pemro_app/dashboard.dart';

class LoginPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 1 / 3;

  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: -getBigDiameter(context) / 2,
            top: -getBigDiameter(context) / 2.85,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Colors.deepOrange, Colors.orange],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
            ),
          ),
          Positioned(
            left: -getSmallDiameter(context) / 2,
            top: -getSmallDiameter(context) / 5,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Colors.orange, Colors.deepOrange],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
            ),
          ),
          Positioned(
            right: -getSmallDiameter(context) / 2,
            top: -getSmallDiameter(context) / 1.5,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Colors.orange, Colors.deepOrange],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
            ),
          ),
          Positioned(
            bottom: -getBigDiameter(context) / 1.25,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.orange,
                      Colors.deepOrange,
                      Colors.deepOrange
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
            ),
          ),
          Positioned(
            top: 10,
            left: 80,
            child: Container(
              width: 200,
              height: 300,
              child: Image(image: AssetImage("images/assets_logo.png")),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("WELCOME TO",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.orange))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("SIMPEDAS",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 45,
                          color: Colors.deepOrange))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("(Sistem Penampung Data Desa)",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.italic,
                          fontSize: 10,
                          color: Colors.black54))
                ],
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    // border: Border.all(color: Colors.white12),
                    // borderRadius: BorderRadius.circular(5)
                  ),
                  margin: EdgeInsets.fromLTRB(25, 335, 25, 10),
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Colors.orange,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.orange)),
                            labelText: "Email: ",
                            labelStyle:
                            TextStyle(color: Colors.black26, fontSize: 14)),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.vpn_key,
                              color: Colors.orange,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.orange)),
                            labelText: "Kata sandi: ",
                            labelStyle:
                            TextStyle(color: Colors.black26, fontSize: 14)),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
                    child: Text(
                      "Lupa kata sandi? ",
                      style: TextStyle(color: Colors.orange, fontSize: 12),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 150,
                        height: 35,
                        child: Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(17),
                            color: Colors.transparent,
                            child: InkWell(
                                borderRadius: BorderRadius.circular(17),
                                splashColor: Colors.yellow,
                                onTap: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                        return MainPage();
                                      }));
                                },
                                child: Center(
                                  child: Text(
                                    "MASUK",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(17)),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Belum Punya Akun?  ",
                          style: TextStyle(
                              color: Colors.black26,
                              fontStyle: FontStyle.italic),
                        ),
                        Text(
                          "DAFTAR",
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
