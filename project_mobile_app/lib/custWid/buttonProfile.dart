import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButtonProfile extends StatelessWidget {
  MyButtonProfile(this.iconProfile, this.textProfile, this.colornya);
  IconData iconProfile;
  Color colornya;
  var textProfile;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 2))
          ],
          borderRadius: BorderRadius.circular(5.0)),
      child: Row(
        children: <Widget>[
          Icon(
            iconProfile,
            color: colornya,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              textProfile,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
