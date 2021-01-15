import 'package:flutter/material.dart';
import 'package:project_mobile_app/custWid/dashboard/table.dart';

class Dashboard extends StatelessWidget {
  Dashboard();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(5),
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(3),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3))
              ]),
          child: Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width * 1,
                  height: 200,
                  child: Image.network("https://www.arsitag.com/proxy-s3-arsitagx-master-article/article-photo/105/xRumah-Adat-Tradisional-Joglo.jpg.pagespeed.ic.DJS9_tj_To.jpg")),
              Text(
                  "Pendopo Agung Desa Suka Makmur, Jl. Sri Rejeki nomer 209, Kecamatan Maju Saja, Kabupaten Jember",
                  style: TextStyle(color: Colors.black54),
                  textAlign: TextAlign.center),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width * 1,
                height: 39,
                color: Colors.orange,
                child: Center(
                  child: Text("PROFIL DESA SUKA MAKMUR",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: ("Poppin"),
                          color: Colors.white)),
                ),
              ),
              Text("periode 2021 - 2026", style: TextStyle(fontSize: 14)),
              Padding(padding: EdgeInsets.only(top: 20)),
              PengurusDesa("Kepala", "Munawir bin Munawarin",
                  AssetImage("images/kd.jpg"), "17 Juli 1999", "082254467791"),
              PengurusDesa(
                  "Wakil Kepala",
                  "Lailatul Qomariah",
                  AssetImage("images/wk.jpg"),
                  "17 Agustus 1999",
                  "082254467791"),
              PengurusDesa(
                  "Sekretaris",
                  "Fatimah Azzahra",
                  AssetImage("images/sk.jpg"),
                  "17 September 1999",
                  "082254467791"),
              PengurusDesa(
                  "Bendahara",
                  "Aisyah Istri Setia",
                  AssetImage("images/bend.jpg"),
                  "17 Oktober 1999",
                  "082254467791"),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width * 1,
                height: 40,
                color: Colors.deepOrange,
                child: Center(
                    child: Text("6 PROGRAM KERJA UNGGULAN",
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: ("Poppin"),
                            color: Colors.white))),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Program(
                  "PEMBANGUNAN 50 RUMAH GRATIS DI SETIAP DUSUN UNTUK WARGA KURANG MAMPU",
                  Colors.black54),
              Program(
                  "PEMBANGUNAN AKSES JALAN YANG BERKELANJUTAN", Colors.black87),
              Program("MEMBUAT ACARA DANGDUTAN DISETIAP BULAN", Colors.black54),
              Program(
                  "BEKERJA DENGAN TIDAK BERSUNGGUH-SUNGGUH", Colors.black87),
              Program("MENJADWALKAN RUTINITAS GOTONG ROYONG DI AKHIR PEKAN",
                  Colors.black54),
              Program("PEMBANGUNAN POS RONDA DI SETIAP RT", Colors.black87),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width * 1,
                height: 40,
                color: Colors.orange,
                child: Center(
                    child: Text("STATISTIK DATA PENDUDUK",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: ("Poppin"),
                            color: Colors.white))),
              ),
              Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1.0, color: Colors.orange)),
                child: MyStatistikaPenduduk(),
              ),
            ],
          ),
        )
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Container Program(String proker, Color warna) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 0.5, color: Colors.black12))),
      child: Text(
        proker,
        style:
            TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: warna),
        textAlign: TextAlign.center,
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container PengurusDesa(String jabatan, String nama, AssetImage assetImage,
      String lahir, String telp) {
    return Container(
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 0.5, color: Colors.black12))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(1, 1))
                ],
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
                image: DecorationImage(image: assetImage, fit: BoxFit.cover)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(jabatan),
              Padding(padding: EdgeInsets.only(bottom: 5)),
              Text(nama,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(lahir, style: TextStyle(fontSize: 10)),
              Text(telp, style: TextStyle(fontSize: 12))
            ],
          ),
        ],
      ),
    );
  }
}
