import 'package:flutter/material.dart';

class MyLogoLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
