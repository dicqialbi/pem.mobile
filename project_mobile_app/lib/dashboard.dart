import 'package:flutter/material.dart';
import 'package:project_mobile_app/berita.dart';
import 'package:project_mobile_app/biodata.dart';

class Dashboard extends StatelessWidget {
  Dashboard();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(5),
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.fromLTRB(0, 125, 300, 0),
                  child: Text(
                    "Biodata",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontStyle: FontStyle.italic),
                    textAlign: TextAlign.end,
                  )),
              Container(
                //margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                height: 150,
                decoration: BoxDecoration(
                  //border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white70,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3))
                  ],
                ),
                child: Biodata(),
              ),
            ],
          ),
        ),
        Align(child: Berita())
      ],
    );
  }
}
