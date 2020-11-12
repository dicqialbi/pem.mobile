import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'p


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
        appBar: AppBar(
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
            ListView(
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
                        child: ListView(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 7, top: 5),
                                  child: Text(
                                    "Kepala Keluarga",
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 12,
                                        color: Colors.black26),
                                  ),
                                ),
                              ],
                            ),
                            Card(
                              elevation: 0.5,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.all(5),
                                      child: Text(
                                        "Agus Susilo",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black87),
                                      )),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 7, top: 5),
                                  child: Text(
                                    "Anggota Keluarga",
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 12,
                                        color: Colors.black26),
                                  ),
                                ),
                              ],
                            ),
                            Card(
                              elevation: 0.5,
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  keluargaAgus("Istri Pertama"),
                                  keluargaAgus("Istri Kedua"),
                                  keluargaAgus("Istri Ketiga"),
                                  keluargaAgus(
                                      "Anak Pertama Dari Istri Pertama"),
                                  keluargaAgus("Anak Pertama Dari Istri Kedua"),
                                  keluargaAgus("Anak Kedua Dari Istri Pertama"),
                                  keluargaAgus(
                                      "Anak Pertama Dari Istri Ketiga"),
                                  keluargaAgus(
                                      "Anak Ketiga Dari Istri Pertama"),
                                  keluargaAgus("Istri Simpanan")
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  child: Column(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 300, 0),
                          child: Text(
                            "Berita",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontStyle: FontStyle.italic),
                            textAlign: TextAlign.end,
                          )),
                      Container(
                        //margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        // height: 1000,
                        decoration: BoxDecoration(
                          //border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white60,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(0, 3))
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            newsCard(),
                            newsCard(),
                            newsCard(),
                            newsCard(),
                            newsCard()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
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
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20)),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: Offset(0, 3))
                              ],
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.dashboard,
                                  color: Colors.deepOrange,
                                ),
                                iconSize: 30,
                                onPressed: () {},
                              ),
                              Text(
                                "Beranda",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: Offset(0, 3))
                              ],
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.assignment,
                                  color: Colors.deepOrange,
                                ),
                                iconSize: 30,
                                onPressed: () {},
                              ),
                              Text(
                                "Biodata",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: Offset(0, 3))
                              ],
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.public,
                                  color: Colors.deepOrange,
                                ),
                                iconSize: 30,
                                onPressed: () {},
                              ),
                              Text(
                                "Berita",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Card newsCard() {
    return Card(
        elevation: 0.5,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("images/news.jpeg"),
            maxRadius: 25,
          ),
          title: Text(
            "Subsidi Beras dari Pemerintah",
            style:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          subtitle: Text(
              "Untuk membantu meringankan beban masyarakat terdampak Covid-19 pemerintah berikan 10.000 subsidi beras gratis kepada masyarakat",
              style: TextStyle(fontStyle: FontStyle.italic),
              maxLines: 2,
              overflow: TextOverflow.ellipsis),
          trailing: Icon(Icons.more_vert),
          isThreeLine: true,
        ));
  }

  Container keluargaAgus(String text) {
    return Container(
        margin: EdgeInsets.only(left: 5, top: 2),
        child: Text(
          text,
          style: TextStyle(fontSize: 15, color: Colors.black87),
        ));
  }
}
