import 'package:flutter/material.dart';
import 'package:project_mobile_app/custWid/berita.dart';
import 'package:project_mobile_app/custWid/data.dart';

class Dashboard extends StatelessWidget {
  Dashboard();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(5),
      children: <Widget>[
        Container(
          // margin: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Positioned(
                      child: Column(
                    children: <Widget>[Data()],
                  )),
                  Positioned(
                      right: 10,
                      bottom: 0,
                      child: RaisedButton(
                        elevation: 0,
                        highlightColor: Colors.white,
                        colorBrightness: Brightness.light,
                        highlightElevation: 0,
                        color: Colors.transparent,
                        onPressed: () {},
                        padding: EdgeInsets.all(0),
                        child: Text('Lihat Selengkapnya...',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.orange,
                                fontStyle: FontStyle.italic)),
                      ))
                ],
              ),
            ],
          ),
        ),
        Align(child: Berita())
      ],
    );
  }
}
