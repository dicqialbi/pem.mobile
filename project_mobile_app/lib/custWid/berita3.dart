import 'package:flutter/material.dart';
import 'package:project_mobile_app/custWid/berita.dart';

class berita3 extends StatefulWidget {
  berita3();

  @override
  _berita3State createState() => _berita3State();
}

class _berita3State extends State<berita3> {
  @override

  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepOrange,
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  splashColor: Colors.deepOrange,
                  onTap: (){
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context){
                          return Berita();
                        }));
                  },
                  child: Icon(
                    Icons.arrow_back,color: Colors.white,size: 30,
                  ),
                ),
                Text("Berita",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                  textAlign: TextAlign.center,)
              ],
            ),
          ),
          body: Column(
            children:<Widget> [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text('Telkomsel Bagi-bagi Paket Internet Murah Sampai Kuota Gratis, 10 GB Rp 2 Ribuan',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black87)),
              ),
              Image.asset("images/telk.png"),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("images/group.jpg"),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('KELOMPOK N',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                    Text('18 November 2020',style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold,color: Colors.grey)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Segera daftarkan bro kode promo Paket Internet Murah 30GB Cuma Rp 5 Ribuan, kini ada Promo Telkomsel 10GB Cuma Rp 2.700 dan 25GB Cuma Rp 10 Ribu. Beragam Promo Telkomsel dan Paket Internet Murah dan Kuota Gratis dari Telkomsel.",
                    style:
                    TextStyle(fontSize: 11,color: Colors.black87)),
              )
            ],
          ),
        )
    );
  }
}


