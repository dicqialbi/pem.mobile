import 'package:flutter/material.dart';
import 'package:project_mobile_app/custWid/text/customFormLogin.dart';
import 'package:project_mobile_app/custWid/logo1.dart';

class SecondLoginPage extends StatelessWidget {
  SecondLoginPage();
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
          MyLogoLogin(),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(25, 335, 25, 10),
                  child: MyCustomForm(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
