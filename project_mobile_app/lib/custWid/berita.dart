import 'package:flutter/material.dart';
import 'package:project_mobile_app/custWid/news.dart';
import 'package:project_mobile_app/custWid/berita1.dart';
import 'package:project_mobile_app/custWid/berita2.dart';
import 'package:project_mobile_app/custWid/berita3.dart';

class Berita extends StatefulWidget {
  Berita();

  @override
  _BeritaState createState() => _BeritaState();
}

class _BeritaState extends State<Berita> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.fromLTRB(0, 10, 300, 0),
            child: Text(
              "Berita",
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  fontStyle: FontStyle.italic),
            )),
        Container(
          decoration: BoxDecoration(
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
                    InkWell(onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => berita1()),
                      );
                    },
                     child: NewsCard(
                      "Pemerintah Desa Suka Maju Bagi Bagi Sembako",
                      "Presiden Joko Widodo (Jokowi) mengatakan pembagian paket sembako dan Kartu Prakerja akan dilakukan oleh Menteri Sosial Juliari P. Batubara. Pembagian ini sudah mengikuti ketentuan tambah anggaran bagi masing-masing program.",
                      AssetImage("images/news.jpeg"))
                    ),
                    InkWell(onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => berita2()),
                      );
                    },
                        child: NewsCard(
                            "Demo di Kedubes Prancis Bubar, Jalan MH Thamrin ke Bundaran HI Tersendat",
                            "Pantauan detikcom, Jumat (6/11/2020), satu mobil komando dengan spanduk Pemuda Organization of Islamic Cooperation (OIC Youth) Indonesia datang dari arah Patung Kuda Arjuna Wiwaha ke Jalan MH Thamrin, tepatnya di dekat halte TransJakarta Sarinah sekitar pukul 13.19 WIB. Mobil komando ini datang tanpa diikuti massa aksi.",
                            AssetImage("images/demo.jpg"))
                    ),
                    InkWell(onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => berita3()),
                      );
                    },
                        child: NewsCard(
                            "Telkomsel Bagi-bagi Paket Internet Murah Sampai Kuota Gratis, 10 GB Rp 2 Ribuan",
                            "Segera daftarkan bro kode promo Paket Internet Murah 30GB Cuma Rp 5 Ribuan, kini ada Promo Telkomsel 10GB Cuma Rp 2.700 dan 25GB Cuma Rp 10 Ribu. Beragam Promo Telkomsel dan Paket Internet Murah dan Kuota Gratis dari Telkomsel.",
                            AssetImage("images/telk.png"))
                    ),
                  ],
        ),
        ),
      ],
    );
  }
}
