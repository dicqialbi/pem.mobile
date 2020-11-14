import 'package:flutter/material.dart';
import 'package:project_mobile_app/dashboard.dart';
import 'dashboard.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text("PROFIL"),
        ),
        body: Column(
          children:<Widget> [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.only(left:5.0),
              height: 50,
              decoration: BoxDecoration(color: Colors.deepOrange, borderRadius: BorderRadius.circular(5.0)),
              child:Row(
                children:<Widget> [
                  Image.asset("images/assets_akun.png", width: 20.0, height: 20.0,),
                  Text(" Akun",textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.only(left:5.0),
              height: 50,
              decoration: BoxDecoration(color: Colors.deepOrange, borderRadius: BorderRadius.circular(5.0)),
              child: Row(
                children:<Widget> [
                  Image.asset("images/assets_bahasa.png", width: 20.0, height: 20.0,),
                  Text(" Bahasa",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white)),
                ],
              ),
            ),

            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.only(left:5.0),
              height: 50,
              decoration: BoxDecoration(color: Colors.deepOrange, borderRadius: BorderRadius.circular(5.0)),
              child: Row(
                children: <Widget>[
                  Image.asset("images/assets_bantuan.png", width: 20.0, height: 20.0,),
                  Text(" Bantuan",
                      style: TextStyle(
                          fontSize:22,
                          color: Colors.white)),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.only(left:5.0),
              height: 50,
              decoration: BoxDecoration(color: Colors.deepOrange, borderRadius: BorderRadius.circular(5.0)),
              child:Row(
                children:<Widget> [
                  Image.asset("images/assets_logout.png",width: 20.0, height: 20.0),
                  Text(" Keluar",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,)),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:300.0),
              alignment:Alignment.bottomRight,
              child: RaisedButton(child: Text("BACK TO DASHBOARD"),
                onPressed: (){
                  Navigator.pop(context, MaterialPageRoute(builder: (context){
                    return Dashboard();
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

