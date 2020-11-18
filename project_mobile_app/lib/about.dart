import 'package:flutter/material.dart';
import 'package:project_mobile_app/custWid/background.dart';
import 'package:project_mobile_app/custWid/logo1.dart';

class MyAbout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("SIMPEDAS",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w900,
                      fontSize: 25)),
            ]),
      ),
      body: Stack(children: <Widget>[
        MyBackground(Colors.orange, Colors.deepOrange),
        Container(
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                height: 200,
                child: Image(
                  image: AssetImage("images/assets_logo.png"),
                ),
              ),
              MyLogoLogin(),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white70
                    // boxShadow: [
                    //   BoxShadow(
                    //       color: Colors.grey.withOpacity(0.2),
                    //       spreadRadius: 3,
                    //       blurRadius: 5,
                    //       offset: Offset(0, 5))
                    // ],
                    ),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Yang melatar belakangi kami dalam membuat aplikasi tersebut adalah sering ditemuinya dalam suatu wilayah RT/RW, yaitu data kependudukan yang dikumpulkan di salah satu pemimpin wilayah tersebut masih tidak lengkap, ataupun rusak. terkadang yang menyebabkan kerusakan pada berkas tersebut biasanya adalah basah, pudar, atau bahkan rusak karena rayap. Dan sering juga ketika ada sebuah bantuan subsidi dari pemerintah tidak tersampaikan dengan baik dan akurat, pasalnya banyak orang kaya yang menerima bantuan subsidi tersebut, dan sebaliknya, yang kurang mampu justru tidak mendapat.",
                      style: TextStyle(
                          color: Colors.black87, fontFamily: "Poppins"),
                      textAlign: TextAlign.justify,
                    ),
                    Text(
                      "Aplikasi Simpedas adalah sebuah sistem yang berfungsi untuk menampung data Kependudukan dari seluruh warga di sebuah desa, baik mulai dari KTP, KK, Surat Tanah, dan Slip Gaji. selain itu aplikasi ini juga dapat menampilkan berita yang berhubungan pemerintah Desa, Dengan adanya sistem yang seperti ini, diharapkan nantinya dapat mempermudah perangkat desa dalam mengolah data tersebut. Dalam aplikasi tersebut terdapat 2 aktor, yaitu admin(perangkat desa) dan user(penduduk desa). Untuk menjaga kerahasiaan dari data tersebut admin disini dapat melihat, merubah, menghapus semua data dari penduduk desa untuk dikelola nantinya, sedangkan user hanya dapat melihat, merubah, dan menghapus data miliknya saja. Selain itu, aplikasi ini juga akan menampilkan update berita tentang desa",
                      style: TextStyle(
                          color: Colors.black87, fontFamily: "Poppins"),
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.copyright,
                      color: Colors.white70,
                      size: 15,
                    ),
                    Text(
                      "Pemrograman Berbasis Mobile - Kelompok N",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
