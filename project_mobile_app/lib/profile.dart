import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project_mobile_app/about.dart';
import 'package:project_mobile_app/custWid/background.dart';
import 'package:project_mobile_app/custWid/buttonProfile.dart';
import 'package:project_mobile_app/form.dart';
import 'package:project_mobile_app/help.dart';
import 'package:project_mobile_app/home.dart';
import 'package:project_mobile_app/login1.dart';
import 'package:page_transition/page_transition.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_mobile_app/akun.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File _imageFile;

  _openGaleri() async {
    // ignore: deprecated_member_use
    File image = await ImagePicker.pickImage(source: ImageSource.gallery, imageQuality: 50);
    setState(() {
      _imageFile = image;
    });
  }

  _openKamera() async {
    // ignore: deprecated_member_use
    File image = await ImagePicker.pickImage(source: ImageSource.camera, imageQuality: 50);
    setState(() {
      _imageFile = image;
    });
  }

  Future <void> _showChoiceDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Pilih Gambar dari?",
                style: TextStyle(
                    color: Colors.deepOrange, fontWeight: FontWeight.bold)),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text("Galeri"),
                    onTap: () {
                      _openGaleri();
                      Navigator.of(context).pop();
                    },
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  GestureDetector(
                    child: Text("Kamera"),
                    onTap: () {
                      _openKamera();
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
            ),
          );
        });
  }


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
                    borderRadius: BorderRadius.circular(10),
                    splashColor: Colors.deepOrange,
                    onTap: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPage();
                      }));
                    },
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  Text("SIMPEDAS",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w900,
                          fontSize: 25))
                ]),
          ),
          body: Stack(
            children: <Widget>[
              MyBackground(Colors.deepOrange, Colors.orange),
              Container(
                child: ListView(
                  children: <Widget>[
                    Center(
                        child: Column(children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(
                                height: 40,
                              ),
                              Center(
                                child: GestureDetector(
                                  onTap: (){
                                    _showChoiceDialog(context);
                                  },
                                  child: CircleAvatar(
                                      radius: 80,
                                      backgroundColor: Colors.grey,
                                      child: _imageFile != null ?
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                                        child: Image.file(_imageFile,width: 300,height: 300,fit: BoxFit.cover,
                                        ),
                                      )
                                          : Container(
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey.withOpacity(0.8),
                                                  spreadRadius: 1,
                                                  blurRadius: 10,
                                                  offset: Offset(1, 2))
                                            ],
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(100)),
                                        width: 400,
                                        height: 400,
                                        child: Icon(
                                          Icons.camera_alt,
                                          color: Colors.deepOrange,
                                          size: 35,
                                        ),
                                      )
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text("KELOMPOK N",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppin'),
                            ),
                          Text("Pemrograman@berbasis.MobileB"),
                    ])),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54.withOpacity(0.2),
                              spreadRadius: 0,
                              blurRadius: 2,
                              offset: Offset(1, 1))
                        ],
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: <Widget>[
                          InkWell(
                            borderRadius: BorderRadius.circular(10),
                            splashColor: Colors.orange,
                            onTap: () {
                              Duration(microseconds: 1);
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.scale,
                                      child: MyAkun()));
                            },
                            child: MyButtonProfile(
                                Icons.person, "Akun", Colors.deepOrange),
                          ),
                          InkWell(
                              borderRadius: BorderRadius.circular(10),
                              splashColor: Colors.orange,
                              onTap: () {
                                Duration(microseconds: 1);
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.scale,
                                        child: MyForm()));
                              },
                              child: MyButtonProfile(
                                  Icons.map, "Surat", Colors.orange)),
                          InkWell(
                              borderRadius: BorderRadius.circular(10),
                              splashColor: Colors.orange,
                              onTap: () {
                                Duration(microseconds: 1);
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.scale,
                                        child: MyHelp()));
                              },
                              child: MyButtonProfile(
                                  Icons.help, "Bantuan", Colors.orange)),
                          InkWell(
                              borderRadius: BorderRadius.circular(10),
                              splashColor: Colors.orange,
                              onTap: () {
                                Duration(microseconds: 1);
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.scale,
                                        child: MyAbout()));
                              },
                              child: MyButtonProfile(
                                  Icons.info, "Tentang", Colors.deepOrange))
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10),
                          splashColor: Colors.orange,
                          onTap: () {
                            Duration(microseconds: 1);
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return LoginPage();
                            }));
                          },
                          child: MyButtonProfile(
                              Icons.assignment_return, "Keluar", Colors.orange),
                        ))
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
