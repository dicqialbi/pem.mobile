import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyBackground extends StatelessWidget {
  MyBackground(this.color1, this.color2);
  Color color1;
  Color color2;
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 1 / 3;

  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Positioned(
            left: -getBigDiameter(context) / 1.4,
            top: -getBigDiameter(context) / 3,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [color1, color2],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
            ),
          ),
          Positioned(
            left: -getSmallDiameter(context) / 2,
            top: -getSmallDiameter(context) / 1.5,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [color1, color2],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
            ),
          ),
          Positioned(
            right: -getSmallDiameter(context) / 5,
            top: -getSmallDiameter(context) / 1.5,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [color2, color1],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
            ),
          ),
          Positioned(
            bottom: -getBigDiameter(context) / 1.5,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [color1, color2, color1],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
